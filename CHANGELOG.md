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
