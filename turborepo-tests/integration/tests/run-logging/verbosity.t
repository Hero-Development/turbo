Setup
  $ . ${TESTDIR}/../../../helpers/setup.sh
  $ . ${TESTDIR}/../_helpers/setup_monorepo.sh $(pwd)

Verbosity level 1
  $ ${TURBO} build -v --filter=util --force
  [-0-9:.TWZ+]+ \[INFO]  turbo: skipping turbod since we appear to be in a non-interactive context (re)
  \xe2\x80\xa2 Packages in scope: util (esc)
  \xe2\x80\xa2 Running build in 1 packages (esc)
  \xe2\x80\xa2 Remote caching disabled (esc)
  util:build: cache bypass, force executing 71153b2fb9d9e052
  util:build: 
  util:build: > build
  util:build: > echo 'building'
  util:build: 
  util:build: building
  
   Tasks:    1 successful, 1 total
  Cached:    0 cached, 1 total
    Time:\s*[\.0-9]+m?s  (re)
  
  $ ${TURBO} build --verbosity=1 --filter=util --force
  [-0-9:.TWZ+]+ \[INFO]  turbo: skipping turbod since we appear to be in a non-interactive context (re)
  \xe2\x80\xa2 Packages in scope: util (esc)
  \xe2\x80\xa2 Running build in 1 packages (esc)
  \xe2\x80\xa2 Remote caching disabled (esc)
  util:build: cache bypass, force executing 71153b2fb9d9e052
  util:build: 
  util:build: > build
  util:build: > echo 'building'
  util:build: 
  util:build: building
  
   Tasks:    1 successful, 1 total
  Cached:    0 cached, 1 total
    Time:\s*[\.0-9]+m?s  (re)
  

Verbosity level 2
  $ ${TURBO} build -vv --filter=util --force
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Global turbo version: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Repository Root: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Running command as global turbo (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::cli: pkg_inference_root set to "" (re)
  2023-09-11T17:03:21.418+0000 [DEBUG] turborepo_lib::run::global_hash: global hash env vars []
  2023-09-11T17:03:21.442+0000 [DEBUG] turborepo_lib::run::global_hash: rust external deps hash: 459c029558afe716
  2023-09-11T17:03:21.468+0000 [DEBUG] turborepo_lib::run::scope::filter: Using  as a basis for selecting packages
  2023-09-11T17:03:21.497+0000 [DEBUG] turborepo_lib::task_hash: task hash env vars for util:build
   vars: []
  [-0-9:.TWZ+]+ |[DEBUG] turbo: local cache folder: path="" (re)
  2023-09-11T17:03:21.497+0000 [DEBUG] turbo: Found go binary at "/Users/nicholas/repos/turbo/target/debug/go-turbo"
  2023-09-11T17:03:21.507Z [DEBUG] turbo: build tag: rust
  2023-09-11T17:03:21.508Z [INFO]  turbo: skipping turbod since we appear to be in a non-interactive context
  2023-09-11T17:03:21.509Z [DEBUG] turbo: global hash env vars: vars=[]
  2023-09-11T17:03:21.527Z [DEBUG] turbo: global hash: value=fe3b3e304bbcc4ea
  2023-09-11T17:03:21.527Z [DEBUG] turbo: global hash matches between Rust and Go
  2023-09-11T17:03:21.527Z [DEBUG] turbo: local cache folder: path=""
  \xe2\x80\xa2 Packages in scope: util (esc)
  \xe2\x80\xa2 Running build in 1 packages (esc)
  \xe2\x80\xa2 Remote caching disabled (esc)
  [-0-9:.TWZ+]+ \[DEBUG] turbo: task hash env vars for util:build: vars=\[] (re)
  [-0-9:.TWZ+]+ \[DEBUG] turbo.: start (re)
  2023-09-11T17:03:21.601Z [DEBUG] turbo: task hash: value=71153b2fb9d9e052
  util:build: cache bypass, force executing 71153b2fb9d9e052
  util:build: 
  util:build: > build
  util:build: > echo 'building'
  util:build: 
  util:build: building
  [-0-9:.TWZ+]+ \[DEBUG] turbo.: caching output: outputs="{\[packages/util/.turbo/turbo-build.log] \[]}" (re)
  [-0-9:.TWZ+]+ \[DEBUG] turbo.: done: status=complete duration=[\.0-9]+m?s (re)
  2023-09-11T17:03:21.779Z [DEBUG] turbo: task hashes match: hashes="map[util#build:71153b2fb9d9e052]"
  
   Tasks:    1 successful, 1 total
  Cached:    0 cached, 1 total
    Time:\s*[\.0-9]+m?s  (re)
  
  $ ${TURBO} build --verbosity=2 --filter=util --force
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Global turbo version: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Repository Root: .* (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Running command as global turbo (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::cli: pkg_inference_root set to "" (re)
  2023-09-11T17:03:21.806+0000 [DEBUG] turborepo_lib::run::global_hash: global hash env vars []
  2023-09-11T17:03:21.829+0000 [DEBUG] turborepo_lib::run::global_hash: rust external deps hash: 459c029558afe716
  2023-09-11T17:03:21.843+0000 [DEBUG] turborepo_lib::run::scope::filter: Using  as a basis for selecting packages
  2023-09-11T17:03:21.879+0000 [DEBUG] turborepo_lib::task_hash: task hash env vars for util:build
   vars: []
  2023-09-11T17:03:21.879+0000 [DEBUG] turborepo_lib::task_graph::visitor: task util#build hash is 71153b2fb9d9e052
  2023-09-11T17:03:21.879+0000 [DEBUG] turbo: Found go binary at "/Users/nicholas/repos/turbo/target/debug/go-turbo"
  2023-09-11T17:03:21.889Z [DEBUG] turbo: build tag: rust
  2023-09-11T17:03:21.890Z [INFO]  turbo: skipping turbod since we appear to be in a non-interactive context
  2023-09-11T17:03:21.891Z [DEBUG] turbo: global hash env vars: vars=[]
  2023-09-11T17:03:21.910Z [DEBUG] turbo: global hash: value=fe3b3e304bbcc4ea
  2023-09-11T17:03:21.910Z [DEBUG] turbo: global hash matches between Rust and Go
  2023-09-11T17:03:21.910Z [DEBUG] turbo: local cache folder: path=""
  \xe2\x80\xa2 Packages in scope: util (esc)
  \xe2\x80\xa2 Running build in 1 packages (esc)
  \xe2\x80\xa2 Remote caching disabled (esc)
  [-0-9:.TWZ+]+ \[DEBUG] turbo: task hash env vars for util:build: vars=\[] (re)
  [-0-9:.TWZ+]+ \[DEBUG] turbo.: start (re)
  2023-09-11T17:03:21.990Z [DEBUG] turbo: task hash: value=71153b2fb9d9e052
  util:build: cache bypass, force executing 71153b2fb9d9e052
  util:build: 
  util:build: > build
  util:build: > echo 'building'
  util:build: 
  util:build: building
  [-0-9:.TWZ+]+ \[DEBUG] turbo.: caching output: outputs="{\[packages/util/.turbo/turbo-build.log] \[]}" (re)
  [-0-9:.TWZ+]+ \[DEBUG] turbo.: done: status=complete duration=[\.0-9]+m?s (re)
  2023-09-11T17:03:22.169Z [DEBUG] turbo: task hashes match: hashes="map[util#build:71153b2fb9d9e052]"
  
   Tasks:    1 successful, 1 total
  Cached:    0 cached, 1 total
    Time:\s*[\.0-9]+m?s  (re)
  

Make sure users can only use one verbosity flag
  $ ${TURBO} build -v --verbosity=1
   ERROR  the argument '-v...' cannot be used with '--verbosity <COUNT>'
  
  Usage: turbo [OPTIONS] [COMMAND]
  
  For more information, try '--help'.
  
  [1]

TURBO_LOG_VERBOSITY should be respoected
  $ TURBO_LOG_VERBOSITY=debug ${TURBO} daemon status
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Global turbo version: .+ (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .+ (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .+ (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Repository Root: .+ (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Running command as global turbo (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::daemon::connector: looking for pid in lockfile: .+ (re)
  Turbo error: unable to connect: daemon is not running
  [1]

verbosity overrides TURBO_LOG_VERBOSITY global setting
  $ TURBO_LOG_VERBOSITY=debug ${TURBO} daemon status -v
  Turbo error: unable to connect: daemon is not running
  [1]

verbosity doesn't override TURBO_LOG_VERBOSITY package settings
  $ TURBO_LOG_VERBOSITY=turborepo_lib=debug ${TURBO} daemon status -v
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Global turbo version: .+ (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .+ (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: No local turbo binary found at: .+ (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Repository Root: .+ (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::shim: Running command as global turbo (re)
  [-0-9:.TWZ+]+ \[DEBUG] turborepo_lib::daemon::connector: looking for pid in lockfile: .+ (re)
  Turbo error: unable to connect: daemon is not running
  [1]
