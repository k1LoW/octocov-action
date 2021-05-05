# octocov-action

:octocat: GitHub Action for [octocov](https://github.com/k1LoW/octocov)

## Usage

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
        name: Checkout
        uses: actions/checkout@v2
      -
        name: Set up Go
        uses: actions/setup-go@v2
        with:
          go-version: 1.16
      -
        name: Run tests with coverage report output
        run: go test ./... -coverprofile=coverage.out
      -
        name: Run octocov
        uses: k1LoW/octocov@main
```

### Check for acceptable coverage

``` yaml
# .octocov.yml
coverage:
  acceptable: 60%
```

``` yaml
# .github/workflows/ci.yml

      -
        name: Run octocov
        uses: k1LoW/octocov@main
```


### Generate coverage report badge and commit

``` yaml
# .octocov.yml
coverage:
  badge: docs/coverage.svg
```

``` yaml
# .github/workflows/ci.yml

    steps:
      -
        name: Checkout
        uses: actions/checkout@v2
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
[...]
      -
        name: Run octocov
        uses: k1LoW/octocov@main
      -
        name: Commit badge
        uses: EndBug/add-and-commit@v7
        with:
          add: 'docs/coverage.svg'
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```
