# Changelog

Since we follow [Conventional
Commits](https://decisions.seedcase-project.org/why-conventional-commits),
we're able to automatically create a release based on the commit message
by using
[Commitizen](https://decisions.seedcase-project.org/why-semantic-release-with-commitizen).
This means that releases can happen quite often, sometimes several in
a day. It also means any individual release will not have many changes
within it. Below is a list of releases along with what was changed
within it.

## 0.4.4 (2025-09-02)

### Fix

- :pencil2: this badge is default `svg`, don't end with it

## 0.4.3 (2025-09-02)

### Refactor

- :wrench: include `revert` as a branch tag
- :hammer: ignore irrelevant dirs when listing TODOs
- :pencil2: remove trailing `/` from URL

## 0.4.2 (2025-09-02)

### Fix

- :pencil2: no spaces around em-dashes

### Refactor

- :memo: simplify some text of the README
- :recycle: replace ending of `_contributors.yml` with newline for pre-commit styling
- :hammer: exclude justfile when listing TODOs
- :hammer: use `quarto update` to match recipe name
- :arrow_up: update pre-commit hook versions

## 0.4.1 (2025-08-29)

### Fix

- :pencil2: should say "teach", not "instruct"
- :fire: removed left over note in `justfile`
- :pencil2: CONTRIBUTING in template shouldn't refer to "template"

### Refactor

- :lipstick: use less emojis and a specific star in `star-us` includes
- :recycle: mention that some files are for development too

## 0.4.0 (2025-08-29)

### Feat

- :sparkles: add GoatCounter HTML script

### Refactor

- :lipstick: strip empty Jinja lines
- :truck: `Rproj` file should only be added for R workshops

## 0.3.2 (2025-08-29)

### Refactor

- :lipstick: wrap text in README in a callout block for separation

## 0.3.1 (2025-08-28)

### Fix

- :pencil2: forgot to include commas in `.zenodo.json` fields
- :pencil2: should be `>-` for validating
- :pencil2: should be `knitr` in the `Rproj` file, not `Sweave`

### Refactor

- :fire: abbrev `meta` isn't used anywhere

## 0.3.0 (2025-08-28)

### Feat

- :wrench: include changelog in website, plus add more text in it

### Fix

- :hammer: point contributor script to generated template repo
- :bug: need to store `github_repo` in answers file

### Refactor

- :recycle: add TODO item in slides
- :pencil2: use shorter link to LICENSE in README
- :hammer: build contributor list in justfile, not Quarto config
- :lipstick: use `svg` for copier badge
- :fire: keep assignee empty in Dependabot PRs

## 0.2.0 (2025-08-24)

### Feat

- :wrench: add all pages to `_quarto.yml`
- :sparkles: add a "is this for you" page
- :sparkles: create Jinja templated version of the landing page
- :sparkles: include a survey includes file
- :sparkles: output `README.qmd` to GFM Markdown version
- :sparkles: create starting URL for workshop on copy
- :sparkles: add (empty) CODEOWNERS
- :sparkles: add author name questions
- :sparkles: add empty objectives includes file
- :sparkles: add a post-copy message and tasks

### Fix

- :bug: actually have to insert `_metadata.yml` file in `_quarto.yml`
- :bug: include shortcode should always use root `/`
- :bug: Jinja strip empty lines needs a specific format
- :bug: Quarto `{#` need to be escaped in Jinja
- :bug: need to escape Quarto shortcodes if in Jinja file
- :pencil2: includes of file should have `_`
- :bug: Jinja else if needs to be `elif`
- :bug: can't have spaces between `%}`

### Refactor

- :recycle: don't update template in `run-all` of justfile
- :truck: includes need to be prefixed with `_`
- :fire: clean up leftover `vscode` setting files
- :recycle: make intro slides a bit more generic
- :recycle: include snippets of all possible sections in session
- :truck: rename to `_star-us.qmd`, not "follow"
- :truck: prefix includes with `_`
- :recycle: stylistic and editing changes to installing R packages page
- :fire: remove duplicate text in survey page
- :recycle: check that board number is a number
- :recycle: switch to using bash in `check-commits` justfile
- :memo: fix link to instructor guide
- :fire: don't need the update from template workflow
- :recycle: switch to using `github_user` and `github_repo` for project naming
- :recycle: use lowercase for workshop type naming
- :recycle: set Zenodo upload type to `lesson`
- :recycle: moved version information for installing into `_metadata.yml`
- :recycle: match syllabus structure to that done in GitHub Intro
- :fire: session isn't always an R workshop, don't need code chunk

## 0.1.0 (2025-08-24)

### Feat

- :sparkles: add initial, though empty, CHANGELOG file
- :sparkles: fill out templating in `_quarto.yml` file
- :sparkles: add `_metadata.yml` file to hold common text
- :hammer: justfile recipe to build readme in template
- :sparkles: update template's README
- :sparkles: set of default badges for template README and landing page
- :sparkles: standalone page for learning design
- :sparkles: add includes for "follow us" block
- :sparkles: add justfile to template
- :sparkles: add `.zenodo.json` to the template

### Fix

- :bug: wrap `${{ }}` in `{{` to escape them
- :bug: should be `{{ }}`, without the %

### Refactor

- :fire: no need for generic "installing-programs" doc
- :recycle: include "reading-website" into overview page
- :truck: simplify includes to all be in `includes/`
- :truck: converted includes into own pages in template
- :recycle: remove social time from schedule
- :recycle: include a starting URL for Quarto website in Netlify
- :construction_worker: merge template website build workflow into one file
- :recycle: expand on template's CONTRIBUTING doc
- :truck: move code of conduct out of includes as own page
- :recycle: use only one `.cz.toml`, but use internal 'if' statements inside
