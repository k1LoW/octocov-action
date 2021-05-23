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

### Check for acceptable coverage

``` yaml
# .octocov.yml
coverage:
  acceptable: 60%
```

``` yaml
# .github/workflows/ci.yml

      -
        uses: k1LoW/octocov-action@v0
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
        uses: actions/checkout@v2
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
[...]
      -
        uses: k1LoW/octocov-action@v0
      -
        uses: EndBug/add-and-commit@v7
        with:
          add: 'docs/coverage.svg'
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```
