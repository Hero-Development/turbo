Setup
  $ . ${TESTDIR}/../../../helpers/setup.sh
  $ . ${TESTDIR}/nested_workspaces_setup.sh $(pwd)/nested_workspaces

  $ cd $TARGET_DIR/outer && ${TURBO} run build --filter=nothing -vv
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Global turbo version: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Repository Root: .*/nested_workspaces/outer (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Running command as global turbo (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::cli: pkg_inference_root set to "" (re)
  2023-09-11T17:00:14.189+0000 [DEBUG] turborepo_lib::run::global_hash: global hash env vars []
  2023-09-11T17:00:14.219+0000 [DEBUG] turborepo_lib::run::global_hash: rust external deps hash: 459c029558afe716
  2023-09-11T17:00:14.233+0000 [DEBUG] turborepo_lib::run::scope::filter: Using  as a basis for selecting packages
  2023-09-11T17:00:14.236+0000 [DEBUG] turbo: Found go binary at "/Users/nicholas/repos/turbo/target/debug/go-turbo"
  2023-09-11T17:00:14.245Z [DEBUG] turbo: build tag: rust
  2023-09-11T17:00:14.246Z [INFO]  turbo: skipping turbod since we appear to be in a non-interactive context
  2023-09-11T17:00:14.247Z [DEBUG] turbo: global hash env vars: vars=[]
  2023-09-11T17:00:14.267Z [DEBUG] turbo: global hash: value=3334211b4e6cde03
  2023-09-11T17:00:14.267Z [DEBUG] turbo: global hash matches between Rust and Go
  2023-09-11T17:00:14.267Z [DEBUG] turbo: local cache folder: path=""
  \xe2\x80\xa2 Packages in scope:  (esc)
  \xe2\x80\xa2 Running build in 0 packages (esc)
  \xe2\x80\xa2 Remote caching disabled (esc)
  2023-09-11T17:00:14.298Z [DEBUG] turbo: task hashes match: hashes=map[]
  
  No tasks were executed as part of this run.
  
   Tasks:    0 successful, 0 total
  Cached:    0 cached, 0 total
    Time:    53ms 
  
  $ cd $TARGET_DIR/outer/apps && ${TURBO} run build --filter=nothing -vv
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Global turbo version: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Repository Root: .*/nested_workspaces/outer (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Running command as global turbo (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::cli: pkg_inference_root set to "apps" (re)
  2023-09-11T17:00:14.320+0000 [DEBUG] turborepo_lib::run::global_hash: global hash env vars []
  2023-09-11T17:00:14.342+0000 [DEBUG] turborepo_lib::run::global_hash: rust external deps hash: 459c029558afe716
  2023-09-11T17:00:14.357+0000 [DEBUG] turborepo_lib::run::scope::filter: Using apps as a basis for selecting packages
  2023-09-11T17:00:14.359+0000 [DEBUG] turbo: Found go binary at "/Users/nicholas/repos/turbo/target/debug/go-turbo"
  2023-09-11T17:00:14.371Z [DEBUG] turbo: build tag: rust
  2023-09-11T17:00:14.372Z [INFO]  turbo: skipping turbod since we appear to be in a non-interactive context
  2023-09-11T17:00:14.372Z [DEBUG] turbo: Using apps as a basis for selecting packages
  2023-09-11T17:00:14.372Z [DEBUG] turbo: global hash env vars: vars=[]
  2023-09-11T17:00:14.396Z [DEBUG] turbo: global hash: value=3334211b4e6cde03
  2023-09-11T17:00:14.396Z [DEBUG] turbo: global hash matches between Rust and Go
  2023-09-11T17:00:14.396Z [DEBUG] turbo: local cache folder: path=""
  \xe2\x80\xa2 Packages in scope:  (esc)
  \xe2\x80\xa2 Running build in 0 packages (esc)
  \xe2\x80\xa2 Remote caching disabled (esc)
  2023-09-11T17:00:14.423Z [DEBUG] turbo: task hashes match: hashes=map[]
  
  No tasks were executed as part of this run.
  
   Tasks:    0 successful, 0 total
  Cached:    0 cached, 0 total
    Time:    52ms 
  
  $ cd $TARGET_DIR/outer/inner && ${TURBO} run build --filter=nothing -vv
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Global turbo version: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Repository Root: .*/nested_workspaces/outer/inner (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Running command as global turbo (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::cli: pkg_inference_root set to "" (re)
  2023-09-11T17:00:14.451+0000 [DEBUG] turborepo_lib::run::global_hash: global hash env vars []
  2023-09-11T17:00:14.472+0000 [DEBUG] turborepo_lib::run::global_hash: rust external deps hash: 459c029558afe716
  2023-09-11T17:00:14.486+0000 [DEBUG] turborepo_lib::run::scope::filter: Using  as a basis for selecting packages
  2023-09-11T17:00:14.488+0000 [DEBUG] turbo: Found go binary at "/Users/nicholas/repos/turbo/target/debug/go-turbo"
  2023-09-11T17:00:14.500Z [DEBUG] turbo: build tag: rust
  2023-09-11T17:00:14.501Z [INFO]  turbo: skipping turbod since we appear to be in a non-interactive context
  2023-09-11T17:00:14.502Z [DEBUG] turbo: global hash env vars: vars=[]
  2023-09-11T17:00:14.527Z [DEBUG] turbo: global hash: value=3334211b4e6cde03
  2023-09-11T17:00:14.527Z [DEBUG] turbo: global hash matches between Rust and Go
  2023-09-11T17:00:14.527Z [DEBUG] turbo: local cache folder: path=""
  \xe2\x80\xa2 Packages in scope:  (esc)
  \xe2\x80\xa2 Running build in 0 packages (esc)
  \xe2\x80\xa2 Remote caching disabled (esc)
  2023-09-11T17:00:14.556Z [DEBUG] turbo: task hashes match: hashes=map[]
  
  No tasks were executed as part of this run.
  
   Tasks:    0 successful, 0 total
  Cached:    0 cached, 0 total
    Time:    55ms 
  
  $ cd $TARGET_DIR/outer/inner/apps && ${TURBO} run build --filter=nothing -vv
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Global turbo version: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Repository Root: .*/nested_workspaces/outer/inner (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Running command as global turbo (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::cli: pkg_inference_root set to "apps" (re)
  2023-09-11T17:00:14.579+0000 [DEBUG] turborepo_lib::run::global_hash: global hash env vars []
  2023-09-11T17:00:14.612+0000 [DEBUG] turborepo_lib::run::global_hash: rust external deps hash: 459c029558afe716
  2023-09-11T17:00:14.626+0000 [DEBUG] turborepo_lib::run::scope::filter: Using apps as a basis for selecting packages
  2023-09-11T17:00:14.628+0000 [DEBUG] turbo: Found go binary at "/Users/nicholas/repos/turbo/target/debug/go-turbo"
  2023-09-11T17:00:14.638Z [DEBUG] turbo: build tag: rust
  2023-09-11T17:00:14.639Z [INFO]  turbo: skipping turbod since we appear to be in a non-interactive context
  2023-09-11T17:00:14.639Z [DEBUG] turbo: Using apps as a basis for selecting packages
  2023-09-11T17:00:14.640Z [DEBUG] turbo: global hash env vars: vars=[]
  2023-09-11T17:00:14.661Z [DEBUG] turbo: global hash: value=3334211b4e6cde03
  2023-09-11T17:00:14.661Z [DEBUG] turbo: global hash matches between Rust and Go
  2023-09-11T17:00:14.661Z [DEBUG] turbo: local cache folder: path=""
  \xe2\x80\xa2 Packages in scope:  (esc)
  \xe2\x80\xa2 Running build in 0 packages (esc)
  \xe2\x80\xa2 Remote caching disabled (esc)
  2023-09-11T17:00:14.687Z [DEBUG] turbo: task hashes match: hashes=map[]
  
  No tasks were executed as part of this run.
  
   Tasks:    0 successful, 0 total
  Cached:    0 cached, 0 total
    Time:    49ms 
  
  $ cd $TARGET_DIR/outer/inner-no-turbo && ${TURBO} run build --filter=nothing -vv
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Global turbo version: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Repository Root: .*/nested_workspaces/outer (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Running command as global turbo (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::cli: pkg_inference_root set to "inner-no-turbo" (re)
  2023-09-11T17:00:14.713+0000 [DEBUG] turborepo_lib::run::global_hash: global hash env vars []
  2023-09-11T17:00:14.742+0000 [DEBUG] turborepo_lib::run::global_hash: rust external deps hash: 459c029558afe716
  2023-09-11T17:00:14.758+0000 [DEBUG] turborepo_lib::run::scope::filter: Using inner-no-turbo as a basis for selecting packages
  2023-09-11T17:00:14.760+0000 [DEBUG] turbo: Found go binary at "/Users/nicholas/repos/turbo/target/debug/go-turbo"
  2023-09-11T17:00:14.769Z [DEBUG] turbo: build tag: rust
  2023-09-11T17:00:14.770Z [INFO]  turbo: skipping turbod since we appear to be in a non-interactive context
  2023-09-11T17:00:14.770Z [DEBUG] turbo: Using inner-no-turbo as a basis for selecting packages
  2023-09-11T17:00:14.771Z [DEBUG] turbo: global hash env vars: vars=[]
  2023-09-11T17:00:14.794Z [DEBUG] turbo: global hash: value=3334211b4e6cde03
  2023-09-11T17:00:14.794Z [DEBUG] turbo: global hash matches between Rust and Go
  2023-09-11T17:00:14.794Z [DEBUG] turbo: local cache folder: path=""
  \xe2\x80\xa2 Packages in scope:  (esc)
  \xe2\x80\xa2 Running build in 0 packages (esc)
  \xe2\x80\xa2 Remote caching disabled (esc)
  2023-09-11T17:00:14.822Z [DEBUG] turbo: task hashes match: hashes=map[]
  
  No tasks were executed as part of this run.
  
   Tasks:    0 successful, 0 total
  Cached:    0 cached, 0 total
    Time:    52ms 
  
  $ cd $TARGET_DIR/outer/inner-no-turbo/apps && ${TURBO} run build --filter=nothing -vv
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Global turbo version: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Repository Root: .*/nested_workspaces/outer (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Running command as global turbo (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::cli: pkg_inference_root set to "inner-no-turbo/apps" (re)
  2023-09-11T17:00:14.847+0000 [DEBUG] turborepo_lib::run::global_hash: global hash env vars []
  2023-09-11T17:00:14.880+0000 [DEBUG] turborepo_lib::run::global_hash: rust external deps hash: 459c029558afe716
  2023-09-11T17:00:14.898+0000 [DEBUG] turborepo_lib::run::scope::filter: Using inner-no-turbo/apps as a basis for selecting packages
  2023-09-11T17:00:14.900+0000 [DEBUG] turbo: Found go binary at "/Users/nicholas/repos/turbo/target/debug/go-turbo"
  2023-09-11T17:00:14.912Z [DEBUG] turbo: build tag: rust
  2023-09-11T17:00:14.913Z [INFO]  turbo: skipping turbod since we appear to be in a non-interactive context
  2023-09-11T17:00:14.913Z [DEBUG] turbo: Using inner-no-turbo/apps as a basis for selecting packages
  2023-09-11T17:00:14.914Z [DEBUG] turbo: global hash env vars: vars=[]
  2023-09-11T17:00:14.949Z [DEBUG] turbo: global hash: value=3334211b4e6cde03
  2023-09-11T17:00:14.949Z [DEBUG] turbo: global hash matches between Rust and Go
  2023-09-11T17:00:14.949Z [DEBUG] turbo: local cache folder: path=""
  \xe2\x80\xa2 Packages in scope:  (esc)
  \xe2\x80\xa2 Running build in 0 packages (esc)
  \xe2\x80\xa2 Remote caching disabled (esc)
  2023-09-11T17:00:14.977Z [DEBUG] turbo: task hashes match: hashes=map[]
  
  No tasks were executed as part of this run.
  
   Tasks:    0 successful, 0 total
  Cached:    0 cached, 0 total
    Time:    64ms 
  
  $ cd $TARGET_DIR/outer-no-turbo && ${TURBO} run build --filter=nothing -vv
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Global turbo version: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  2023-09-11T17:00:14.992+0000 [DEBUG] turborepo_lib::shim: Repository Root: /private/var/folders/xx/rx5hgvnx4hldttzrdq7fdr_w0000gn/T/prysk-tests-5wbd8zoe/nested_workspaces.t/nested_workspaces/outer-no-turbo
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Running command as global turbo (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::cli: pkg_inference_root set to "" (re)
  Error: Could not find turbo.json. Follow directions at https://turbo.build/repo/docs to create one
  [1]

  $ cd $TARGET_DIR/outer-no-turbo/apps && ${TURBO} run build --filter=nothing -vv
  2023-09-11T17:00:15.016+0000 [DEBUG] turborepo_lib::shim: Global turbo version: 1.10.14-canary.0
  2023-09-11T17:00:15.017+0000 [DEBUG] turborepo_lib::shim: No local turbo binary found at: /private/var/folders/xx/rx5hgvnx4hldttzrdq7fdr_w0000gn/T/prysk-tests-5wbd8zoe/nested_workspaces.t/nested_workspaces/outer-no-turbo/node_modules/turbo-darwin-arm64/bin/turbo
  2023-09-11T17:00:15.017+0000 [DEBUG] turborepo_lib::shim: No local turbo binary found at: /private/var/folders/xx/rx5hgvnx4hldttzrdq7fdr_w0000gn/T/prysk-tests-5wbd8zoe/nested_workspaces.t/nested_workspaces/outer-no-turbo/node_modules/turbo/node_modules/turbo-darwin-arm64/bin/turbo
  2023-09-11T17:00:15.018+0000 [DEBUG] turborepo_lib::shim: Repository Root: /private/var/folders/xx/rx5hgvnx4hldttzrdq7fdr_w0000gn/T/prysk-tests-5wbd8zoe/nested_workspaces.t/nested_workspaces/outer-no-turbo
  2023-09-11T17:00:15.018+0000 [DEBUG] turborepo_lib::shim: Running command as global turbo
  2023-09-11T17:00:15.020+0000 [DEBUG] turborepo_lib::cli: pkg_inference_root set to "apps"
  Error: Could not find turbo.json. Follow directions at https://turbo.build/repo/docs to create one
  [1]

  $ cd $TARGET_DIR/outer-no-turbo/inner && ${TURBO} run build --filter=nothing -vv
  2023-09-11T17:00:15.041+0000 [DEBUG] turborepo_lib::shim: Global turbo version: 1.10.14-canary.0
  2023-09-11T17:00:15.044+0000 [DEBUG] turborepo_lib::shim: No local turbo binary found at: /private/var/folders/xx/rx5hgvnx4hldttzrdq7fdr_w0000gn/T/prysk-tests-5wbd8zoe/nested_workspaces.t/nested_workspaces/outer-no-turbo/inner/node_modules/turbo-darwin-arm64/bin/turbo
  2023-09-11T17:00:15.044+0000 [DEBUG] turborepo_lib::shim: No local turbo binary found at: /private/var/folders/xx/rx5hgvnx4hldttzrdq7fdr_w0000gn/T/prysk-tests-5wbd8zoe/nested_workspaces.t/nested_workspaces/outer-no-turbo/inner/node_modules/turbo/node_modules/turbo-darwin-arm64/bin/turbo
  2023-09-11T17:00:15.044+0000 [DEBUG] turborepo_lib::shim: Repository Root: /private/var/folders/xx/rx5hgvnx4hldttzrdq7fdr_w0000gn/T/prysk-tests-5wbd8zoe/nested_workspaces.t/nested_workspaces/outer-no-turbo/inner
  2023-09-11T17:00:15.044+0000 [DEBUG] turborepo_lib::shim: Running command as global turbo
  2023-09-11T17:00:15.046+0000 [DEBUG] turborepo_lib::cli: pkg_inference_root set to ""
  2023-09-11T17:00:15.055+0000 [DEBUG] turborepo_lib::run::global_hash: global hash env vars []
  2023-09-11T17:00:15.086+0000 [DEBUG] turborepo_lib::run::global_hash: rust external deps hash: 459c029558afe716
  2023-09-11T17:00:15.100+0000 [DEBUG] turborepo_lib::run::scope::filter: Using  as a basis for selecting packages
  [-0-9:.TWZ+]+ \[DEBUG] turbo: Found go binary at "[\-\w\/]+" (re)
  [-0-9:.TWZ+]+ \[DEBUG] turbo: build tag: (go|rust) (re)
  [-0-9:.TWZ+]+ \[INFO]  turbo: skipping turbod since we appear to be in a non-interactive context (re)
  2023-09-11T17:00:15.114Z [DEBUG] turbo: global hash env vars: vars=[]
  2023-09-11T17:00:15.129Z [DEBUG] turbo: global hash: value=3334211b4e6cde03
  2023-09-11T17:00:15.129Z [DEBUG] turbo: global hash matches between Rust and Go
  [-0-9:.TWZ+]+ \[DEBUG] turbo: local cache folder: path="" (re)
  \xe2\x80\xa2 Packages in scope:  (esc)
  \xe2\x80\xa2 Running build in 0 packages (esc)
  \xe2\x80\xa2 Remote caching disabled (esc)
  2023-09-11T17:00:15.166Z [DEBUG] turbo: task hashes match: hashes=map[]
  
  No tasks were executed as part of this run.
  
   Tasks:    0 successful, 0 total
  Cached:    0 cached, 0 total
    Time:    53ms 
  
  $ cd $TARGET_DIR/outer-no-turbo/inner/apps && ${TURBO} run build --filter=nothing -vv
  2023-09-11T17:00:15.174+0000 [DEBUG] turborepo_lib::shim: Global turbo version: 1.10.14-canary.0
  2023-09-11T17:00:15.177+0000 [DEBUG] turborepo_lib::shim: No local turbo binary found at: /private/var/folders/xx/rx5hgvnx4hldttzrdq7fdr_w0000gn/T/prysk-tests-5wbd8zoe/nested_workspaces.t/nested_workspaces/outer-no-turbo/inner/node_modules/turbo-darwin-arm64/bin/turbo
  2023-09-11T17:00:15.177+0000 [DEBUG] turborepo_lib::shim: No local turbo binary found at: /private/var/folders/xx/rx5hgvnx4hldttzrdq7fdr_w0000gn/T/prysk-tests-5wbd8zoe/nested_workspaces.t/nested_workspaces/outer-no-turbo/inner/node_modules/turbo/node_modules/turbo-darwin-arm64/bin/turbo
  2023-09-11T17:00:15.177+0000 [DEBUG] turborepo_lib::shim: Repository Root: /private/var/folders/xx/rx5hgvnx4hldttzrdq7fdr_w0000gn/T/prysk-tests-5wbd8zoe/nested_workspaces.t/nested_workspaces/outer-no-turbo/inner
  2023-09-11T17:00:15.177+0000 [DEBUG] turborepo_lib::shim: Running command as global turbo
  2023-09-11T17:00:15.180+0000 [DEBUG] turborepo_lib::cli: pkg_inference_root set to "apps"
  2023-09-11T17:00:15.189+0000 [DEBUG] turborepo_lib::run::global_hash: global hash env vars []
  2023-09-11T17:00:15.218+0000 [DEBUG] turborepo_lib::run::global_hash: rust external deps hash: 459c029558afe716
  2023-09-11T17:00:15.232+0000 [DEBUG] turborepo_lib::run::scope::filter: Using apps as a basis for selecting packages
  2023-09-11T17:00:15.234+0000 [DEBUG] turbo: Found go binary at "/Users/nicholas/repos/turbo/target/debug/go-turbo"
  2023-09-11T17:00:15.248Z [DEBUG] turbo: build tag: rust
  2023-09-11T17:00:15.249Z [INFO]  turbo: skipping turbod since we appear to be in a non-interactive context
  2023-09-11T17:00:15.249Z [DEBUG] turbo: Using apps as a basis for selecting packages
  2023-09-11T17:00:15.249Z [DEBUG] turbo: global hash env vars: vars=[]
  2023-09-11T17:00:15.281Z [DEBUG] turbo: global hash: value=3334211b4e6cde03
  2023-09-11T17:00:15.281Z [DEBUG] turbo: global hash matches between Rust and Go
  2023-09-11T17:00:15.281Z [DEBUG] turbo: local cache folder: path=""
  \xe2\x80\xa2 Packages in scope:  (esc)
  \xe2\x80\xa2 Running build in 0 packages (esc)
  \xe2\x80\xa2 Remote caching disabled (esc)
  2023-09-11T17:00:15.316Z [DEBUG] turbo: task hashes match: hashes=map[]
  
  No tasks were executed as part of this run.
  
   Tasks:    0 successful, 0 total
  Cached:    0 cached, 0 total
    Time:    68ms 
  
  $ cd $TARGET_DIR/outer-no-turbo/inner-no-turbo && ${TURBO} run build --filter=nothing -vv
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Global turbo version: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Repository Root: .*/nested_workspaces/outer-no-turbo/inner-no-turbo (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Running command as global turbo (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::cli: pkg_inference_root set to "" (re)
  Error: Could not find turbo.json. Follow directions at https://turbo.build/repo/docs to create one
  [1]

  $ cd $TARGET_DIR/outer-no-turbo/inner-no-turbo/apps && ${TURBO} run build --filter=nothing -vv
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Global turbo version: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Repository Root: .*/nested_workspaces/outer-no-turbo/inner-no-turbo (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Running command as global turbo (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::cli: pkg_inference_root set to "apps" (re)
  Error: Could not find turbo.json. Follow directions at https://turbo.build/repo/docs to create one
  [1]
