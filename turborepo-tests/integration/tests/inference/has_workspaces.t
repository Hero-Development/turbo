Setup
  $ . ${TESTDIR}/../../../helpers/setup.sh
  $ . ${TESTDIR}/../_helpers/setup_monorepo.sh $(pwd) inference/has_workspaces

  $ cd $TARGET_DIR && ${TURBO} run build --filter=nothing -vv
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Global turbo version: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Repository Root: .*/has_workspaces\.t (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Running command as global turbo (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::cli: pkg_inference_root set to "" (re)
  2023-09-11T17:00:02.808+0000 [DEBUG] turborepo_lib::run::global_hash: global hash env vars []
  2023-09-11T17:00:02.834+0000 [DEBUG] turborepo_lib::run::global_hash: rust external deps hash: 459c029558afe716
  2023-09-11T17:00:02.853+0000 [DEBUG] turborepo_lib::run::scope::filter: Using  as a basis for selecting packages
  2023-09-11T17:00:02.856+0000 [DEBUG] turbo: Found go binary at "/Users/nicholas/repos/turbo/target/debug/go-turbo"
  2023-09-11T17:00:02.868Z [DEBUG] turbo: build tag: rust
  2023-09-11T17:00:02.869Z [INFO]  turbo: skipping turbod since we appear to be in a non-interactive context
  2023-09-11T17:00:02.869Z [DEBUG] turbo: global hash env vars: vars=[]
  2023-09-11T17:00:02.890Z [DEBUG] turbo: global hash: value=3334211b4e6cde03
  2023-09-11T17:00:02.890Z [DEBUG] turbo: global hash matches between Rust and Go
  2023-09-11T17:00:02.890Z [DEBUG] turbo: local cache folder: path=""
  \xe2\x80\xa2 Packages in scope:  (esc)
  \xe2\x80\xa2 Running build in 0 packages (esc)
  \xe2\x80\xa2 Remote caching disabled (esc)
  2023-09-11T17:00:02.922Z [DEBUG] turbo: task hashes match: hashes=map[]
  
  No tasks were executed as part of this run.
  
   Tasks:    0 successful, 0 total
  Cached:    0 cached, 0 total
    Time:\s*[\.0-9]+m?s  (re)
  
  $ cd $TARGET_DIR/apps/web && ${TURBO} run build --filter=nothing -vv
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Global turbo version: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Repository Root: .*/has_workspaces\.t (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Running command as global turbo (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::cli: pkg_inference_root set to "apps/web" (re)
  2023-09-11T17:00:02.949+0000 [DEBUG] turborepo_lib::run::global_hash: global hash env vars []
  2023-09-11T17:00:02.975+0000 [DEBUG] turborepo_lib::run::global_hash: rust external deps hash: 459c029558afe716
  2023-09-11T17:00:02.989+0000 [DEBUG] turborepo_lib::run::scope::filter: Using apps/web as a basis for selecting packages
  2023-09-11T17:00:02.991+0000 [DEBUG] turbo: Found go binary at "/Users/nicholas/repos/turbo/target/debug/go-turbo"
  2023-09-11T17:00:03.004Z [DEBUG] turbo: build tag: rust
  2023-09-11T17:00:03.005Z [INFO]  turbo: skipping turbod since we appear to be in a non-interactive context
  2023-09-11T17:00:03.005Z [DEBUG] turbo: Using apps/web as a basis for selecting packages
  2023-09-11T17:00:03.006Z [DEBUG] turbo: global hash env vars: vars=[]
  2023-09-11T17:00:03.030Z [DEBUG] turbo: global hash: value=3334211b4e6cde03
  2023-09-11T17:00:03.030Z [DEBUG] turbo: global hash matches between Rust and Go
  2023-09-11T17:00:03.030Z [DEBUG] turbo: local cache folder: path=""
  \xe2\x80\xa2 Packages in scope:  (esc)
  \xe2\x80\xa2 Running build in 0 packages (esc)
  \xe2\x80\xa2 Remote caching disabled (esc)
  2023-09-11T17:00:03.062Z [DEBUG] turbo: task hashes match: hashes=map[]
  
  No tasks were executed as part of this run.
  
   Tasks:    0 successful, 0 total
  Cached:    0 cached, 0 total
    Time:\s*[\.0-9]+m?s  (re)
  
  $ cd $TARGET_DIR/crates && ${TURBO} run build --filter=nothing -vv
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Global turbo version: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Repository Root: .*/has_workspaces\.t (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Running command as global turbo (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::cli: pkg_inference_root set to "crates" (re)
  2023-09-11T17:00:03.087+0000 [DEBUG] turborepo_lib::run::global_hash: global hash env vars []
  2023-09-11T17:00:03.109+0000 [DEBUG] turborepo_lib::run::global_hash: rust external deps hash: 459c029558afe716
  2023-09-11T17:00:03.125+0000 [DEBUG] turborepo_lib::run::scope::filter: Using crates as a basis for selecting packages
  2023-09-11T17:00:03.127+0000 [DEBUG] turbo: Found go binary at "/Users/nicholas/repos/turbo/target/debug/go-turbo"
  2023-09-11T17:00:03.137Z [DEBUG] turbo: build tag: rust
  2023-09-11T17:00:03.138Z [INFO]  turbo: skipping turbod since we appear to be in a non-interactive context
  2023-09-11T17:00:03.138Z [DEBUG] turbo: Using crates as a basis for selecting packages
  2023-09-11T17:00:03.139Z [DEBUG] turbo: global hash env vars: vars=[]
  2023-09-11T17:00:03.161Z [DEBUG] turbo: global hash: value=3334211b4e6cde03
  2023-09-11T17:00:03.161Z [DEBUG] turbo: global hash matches between Rust and Go
  2023-09-11T17:00:03.161Z [DEBUG] turbo: local cache folder: path=""
  \xe2\x80\xa2 Packages in scope:  (esc)
  \xe2\x80\xa2 Running build in 0 packages (esc)
  \xe2\x80\xa2 Remote caching disabled (esc)
  2023-09-11T17:00:03.191Z [DEBUG] turbo: task hashes match: hashes=map[]
  
  No tasks were executed as part of this run.
  
   Tasks:    0 successful, 0 total
  Cached:    0 cached, 0 total
    Time:\s*[\.0-9]+m?s  (re)
  
  $ cd $TARGET_DIR/crates/super-crate/tests/test-package && ${TURBO} run build --filter=nothing -vv
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Global turbo version: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Repository Root: .*/has_workspaces\.t (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Running command as global turbo (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::cli: pkg_inference_root set to "crates/super-crate/tests/test-package" (re)
  2023-09-11T17:00:03.214+0000 [DEBUG] turborepo_lib::run::global_hash: global hash env vars []
  2023-09-11T17:00:03.241+0000 [DEBUG] turborepo_lib::run::global_hash: rust external deps hash: 459c029558afe716
  2023-09-11T17:00:03.258+0000 [DEBUG] turborepo_lib::run::scope::filter: Using crates/super-crate/tests/test-package as a basis for selecting packages
  2023-09-11T17:00:03.260+0000 [DEBUG] turbo: Found go binary at "/Users/nicholas/repos/turbo/target/debug/go-turbo"
  2023-09-11T17:00:03.273Z [DEBUG] turbo: build tag: rust
  2023-09-11T17:00:03.275Z [INFO]  turbo: skipping turbod since we appear to be in a non-interactive context
  2023-09-11T17:00:03.275Z [DEBUG] turbo: Using crates/super-crate/tests/test-package as a basis for selecting packages
  2023-09-11T17:00:03.275Z [DEBUG] turbo: global hash env vars: vars=[]
  2023-09-11T17:00:03.298Z [DEBUG] turbo: global hash: value=3334211b4e6cde03
  2023-09-11T17:00:03.298Z [DEBUG] turbo: global hash matches between Rust and Go
  2023-09-11T17:00:03.298Z [DEBUG] turbo: local cache folder: path=""
  \xe2\x80\xa2 Packages in scope:  (esc)
  \xe2\x80\xa2 Running build in 0 packages (esc)
  \xe2\x80\xa2 Remote caching disabled (esc)
  2023-09-11T17:00:03.331Z [DEBUG] turbo: task hashes match: hashes=map[]
  
  No tasks were executed as part of this run.
  
   Tasks:    0 successful, 0 total
  Cached:    0 cached, 0 total
    Time:\s*[\.0-9]+m?s  (re)
  
  $ cd $TARGET_DIR/packages/ui-library/src && ${TURBO} run build --filter=nothing -vv
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Global turbo version: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Repository Root: .*/has_workspaces\.t (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Running command as global turbo (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::cli: pkg_inference_root set to "packages/ui-library/src" (re)
  2023-09-11T17:00:03.357+0000 [DEBUG] turborepo_lib::run::global_hash: global hash env vars []
  2023-09-11T17:00:03.393+0000 [DEBUG] turborepo_lib::run::global_hash: rust external deps hash: 459c029558afe716
  2023-09-11T17:00:03.408+0000 [DEBUG] turborepo_lib::run::scope::filter: Using packages/ui-library/src as a basis for selecting packages
  2023-09-11T17:00:03.410+0000 [DEBUG] turbo: Found go binary at "/Users/nicholas/repos/turbo/target/debug/go-turbo"
  2023-09-11T17:00:03.419Z [DEBUG] turbo: build tag: rust
  2023-09-11T17:00:03.421Z [INFO]  turbo: skipping turbod since we appear to be in a non-interactive context
  2023-09-11T17:00:03.421Z [DEBUG] turbo: Using packages/ui-library/src as a basis for selecting packages
  2023-09-11T17:00:03.421Z [DEBUG] turbo: global hash env vars: vars=[]
  2023-09-11T17:00:03.439Z [DEBUG] turbo: global hash: value=3334211b4e6cde03
  2023-09-11T17:00:03.439Z [DEBUG] turbo: global hash matches between Rust and Go
  2023-09-11T17:00:03.439Z [DEBUG] turbo: local cache folder: path=""
  \xe2\x80\xa2 Packages in scope:  (esc)
  \xe2\x80\xa2 Running build in 0 packages (esc)
  \xe2\x80\xa2 Remote caching disabled (esc)
  2023-09-11T17:00:03.471Z [DEBUG] turbo: task hashes match: hashes=map[]
  
  No tasks were executed as part of this run.
  
   Tasks:    0 successful, 0 total
  Cached:    0 cached, 0 total
    Time:\s*[\.0-9]+m?s  (re)
  