import inquirer from "inquirer";
import chalk from "chalk";
import { getAvailablePackageManagers } from "@turbo/utils";
import { Logger } from "../../logger";
import { directoryInfo } from "../../utils";
import { getWorkspaceDetails } from "../../getWorkspaceDetails";
import type { PackageManager } from "../../types";
import { convertProject } from "../../convert";
import type { ConvertCommandArgument, ConvertCommandOptions } from "./types";

function isPackageManagerDisabled({
  packageManager,
  currentWorkspaceManger,
  availablePackageManagers,
}: {
  packageManager: PackageManager;
  currentWorkspaceManger: PackageManager;
  availablePackageManagers: Record<PackageManager, string | undefined>;
}) {
  if (currentWorkspaceManger === packageManager) {
    return "already in use";
  }

  if (!availablePackageManagers[packageManager]) {
    return "not installed";
  }

  return false;
}

export async function convertCommand(
  directory: ConvertCommandArgument,
  packageManager: ConvertCommandArgument,
  options: ConvertCommandOptions
) {
  const logger = new Logger(options);

  logger.hero();
  logger.header("Welcome, let's convert your project.");
  logger.blankLine();

  const directoryAnswer = await inquirer.prompt<{
    directoryInput: string;
  }>({
    type: "input",
    name: "directoryInput",
    message: "Where is the root of your repo?",
    when: !directory,
    default: ".",
    validate: (d: string) => {
      const { exists, absolute } = directoryInfo({ directory: d });
      if (exists) {
        return true;
      }
      return `Directory ${chalk.dim(`(${absolute})`)} does not exist`;
    },
    filter: (d: string) => d.trim(),
  });

  const { directoryInput: selectedDirectory = directory } = directoryAnswer;
  const { exists, absolute: root } = directoryInfo({
    directory: selectedDirectory,
  });
  if (!exists) {
    logger.error(`Directory ${chalk.dim(`(${root})`)} does not exist`);
    return process.exit(1);
  }

  const [project, availablePackageManagers] = await Promise.all([
    getWorkspaceDetails({ root }),
    getAvailablePackageManagers(),
  ]);

  const packageManagerAnswer = await inquirer.prompt<{
    packageManagerInput?: PackageManager;
  }>({
    name: "packageManagerInput",
    type: "list",
    message: `Convert from ${project.packageManager} workspaces to:`,
    when:
      !packageManager ||
      !Object.keys(availablePackageManagers).includes(packageManager),
    choices: ["npm", "pnpm", "yarn"].map((p) => ({
      name: `${p} workspaces`,
      value: p,
      disabled: isPackageManagerDisabled({
        packageManager: p as PackageManager,
        currentWorkspaceManger: project.packageManager,
        availablePackageManagers,
      }),
    })),
  });
  const {
    packageManagerInput:
      selectedPackageManager = packageManager as PackageManager,
  } = packageManagerAnswer;

  await convertProject({
    project,
    convertTo: {
      name: selectedPackageManager,
      // eslint-disable-next-line @typescript-eslint/no-non-null-assertion -- selectedPackageManager is validated against availablePackageManagers
      version: availablePackageManagers[selectedPackageManager]!,
    },
    logger,
    options,
  });
}
