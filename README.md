# octocov-action

:octocat: GitHub Action for [octocov](https://github.com/k1LoW/octocov)

![comment](docs/comment.png)

## Usage

Add `.octocov.yml` ( or `octocov.yml` ) file to your repository.

``` yaml
# .octocov.yml
coverage:
  path: coverage.out
codeToTestRatio:
  code:
    - '**/*.go'
    - '!**/*_test.go'
  test:
    - '**/*_test.go'
comment:
  enable: true
```

And set up a workflow file as follows and run octocov on GitHub Actions.

``` yaml
# .github/workflows/ci.yml
name: Test

on:
  pull_request:
  push:

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      -
        uses: actions/checkout@v2
      -
        uses: actions/setup-go@v2
        with:
          go-version: 1.16
      -
        name: Run tests with coverage report output
        run: go test ./... -coverprofile=coverage.out
      -
        uses: k1LoW/octocov-action@v0
```

See [action.yml](action.yml) and [octocov README](https://github.com/k1LoW/octocov) for more details on how to configure it.
