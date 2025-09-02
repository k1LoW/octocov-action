# octocov-action

:octocat: GitHub Action for [octocov](https://github.com/k1LoW/octocov)

![comment](docs/comment_with_diff.png)

## Usage

Add `.octocov.yml` ( or `octocov.yml` ) file to your repository.

( `octocov init` is useful for easy generation. )

``` yaml
# .octocov.yml Go example
coverage:
  paths:
    - path/to/coverage.out
codeToTestRatio:
  code:
    - '**/*.go'
    - '!**/*_test.go'
  test:
    - '**/*_test.go'
testExecutionTime:
  if: true
diff:
  datastores:
    - artifact://${GITHUB_REPOSITORY}
comment:
  if: is_pull_request
report:
  if: is_default_branch
  datastores:
    - artifact://${GITHUB_REPOSITORY}
```

And set up a workflow file as follows and run octocov on GitHub Actions.

``` yaml
# .github/workflows/ci.yml
name: Test

on:
  push:
    branches:
      - main
  pull_request:

jobs:
  test:
    runs-on: ubuntu-latest 
    permissions:
      # To comment on PRs
      pull-requests: write
      # To retrieve test step time in GitHub Action
      contents: read
      # To retrieve previous report for default branch, which is saved as GitHub Action Artifacts
      actions: read
    steps:
      -
        uses: actions/checkout@v4
      -
        uses: actions/setup-go@v4
        with:
          go-version-file: go.mod
      -
        name: Run tests with coverage report output
        run: go test ./... -coverprofile=coverage.out
      -
        uses: k1LoW/octocov-action@v1
```

See [action.yml](action.yml) and [octocov README](https://github.com/k1LoW/octocov) for more details on how to configure it.

See [examples](examples) for more complex scenarios.

## [Docker container action](https://docs.github.com/en/actions/creating-actions/creating-a-docker-container-action) version

Use `v0`.
