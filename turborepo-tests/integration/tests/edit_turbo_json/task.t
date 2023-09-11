Setup
  $ . ${TESTDIR}/../../../helpers/setup.sh
  $ . ${TESTDIR}/../_helpers/setup_monorepo.sh $(pwd)

Baseline task hashes
  $ cp "$TESTDIR/fixture-configs/a-baseline.json" "$(pwd)/turbo.json" && git commit -am "no comment" --quiet
  $ ${TURBO} build --dry=json | jq -r '.tasks | sort_by(.taskId)[] | {taskId, hash}'
  {
    "taskId": "another#build",
    "hash": "eb5b0a04eb7b52e3"
  }
  {
    "taskId": "my-app#build",
    "hash": "44a7276cf5626389"
  }
  {
    "taskId": "util#build",
    "hash": "71153b2fb9d9e052"
  }

Change only my-app#build
  $ cp "$TESTDIR/fixture-configs/b-change-only-my-app.json" "$(pwd)/turbo.json" && git commit -am "no comment" --quiet
  $ ${TURBO} build --dry=json | jq -r '.tasks | sort_by(.taskId)[] | {taskId, hash}'
  {
    "taskId": "another#build",
    "hash": "eb5b0a04eb7b52e3"
  }
  {
    "taskId": "my-app#build",
    "hash": "70f37a45e5d96728"
  }
  {
    "taskId": "util#build",
    "hash": "71153b2fb9d9e052"
  }

Change my-app#build dependsOn
  $ cp "$TESTDIR/fixture-configs/c-my-app-depends-on.json" "$(pwd)/turbo.json" && git commit -am "no comment" --quiet
  $ ${TURBO} build --dry=json | jq -r '.tasks | sort_by(.taskId)[] | {taskId, hash}'
  {
    "taskId": "another#build",
    "hash": "eb5b0a04eb7b52e3"
  }
  {
    "taskId": "my-app#build",
    "hash": "74b18ef5ab31d866"
  }
  {
    "taskId": "util#build",
    "hash": "71153b2fb9d9e052"
  }

Non-materially modifying the dep graph does nothing.
  $ cp "$TESTDIR/fixture-configs/d-depends-on-util.json" "$(pwd)/turbo.json" && git commit -am "no comment" --quiet
  $ ${TURBO} build --dry=json | jq -r '.tasks | sort_by(.taskId)[] | {taskId, hash}'
  {
    "taskId": "another#build",
    "hash": "eb5b0a04eb7b52e3"
  }
  {
    "taskId": "my-app#build",
    "hash": "74b18ef5ab31d866"
  }
  {
    "taskId": "util#build",
    "hash": "71153b2fb9d9e052"
  }


Change util#build impacts itself and my-app
  $ cp "$TESTDIR/fixture-configs/e-depends-on-util-but-modified.json" "$(pwd)/turbo.json" && git commit -am "no comment" --quiet
  $ ${TURBO} build --dry=json | jq -r '.tasks | sort_by(.taskId)[] | {taskId, hash}'
  {
    "taskId": "another#build",
    "hash": "eb5b0a04eb7b52e3"
  }
  {
    "taskId": "my-app#build",
    "hash": "65a894411eac4b80"
  }
  {
    "taskId": "util#build",
    "hash": "b704532efc2819e7"
  }
