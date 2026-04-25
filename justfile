@_default:
  just --list --unsorted

# Run all build-related recipes in the justfile
run-all: update-quarto-theme sync-template-files check-all format-md test-all build-all

# List all TODO items in the repository
list-todos:
  grep -R -n \
  --exclude-dir=.quarto \
  --exclude-dir=template/ \
  --exclude=justfile \
  --exclude=copier.yaml \
  --exclude=_site \
  "TODO" *

# Install the pre-commit hooks
install-precommit:
  uvx pre-commit install
  uvx pre-commit run --all-files
  uvx pre-commit autoupdate

# Update (or add if not present) the Quarto rostools-theme extension
update-quarto-theme:
  quarto update rostools/rostools-theme --no-prompt

# Update files in the template from the Copier parent folder
sync-template-files:
  cp .pre-commit-config.yaml .gitignore .typos.toml .editorconfig CODE_OF_CONDUCT.md 404.qmd template/
  mkdir -p template/tools
  cp tools/get-contributors.sh template/tools/
  cp .github/dependabot.yml .github/pull_request_template.md template/.github/
  cp -r _extensions/* "template/{% if for_rostools %}_extensions{% endif %}"
  cp .vscode/json.code-snippets .vscode/extensions.json template/.vscode/

# Check for spelling errors in files
check-spelling:
  uvx typos

# Check that URLs work
check-urls:
  lychee . \
  --verbose \
  --extensions md,qmd,jinja \
  --exclude-path "_badges.qmd"

# Run all check-related recipes
check-all: check-spelling check-urls

# Format Markdown files
format-md:
  uvx rumdl fmt --silent
  # includes option doesn't work with Jinja files, so do manually
  uvx rumdl fmt --silent **/*.qmd.jinja **/*.md.jinja

# Test template creation with specific parameters: `type`
test type="r":
  sh ./test-template.sh {{ type }}

# Test template creation through use of the question approach
test-manual:
  mkdir -p _temp/manual
  rm -rf _temp/manual/test-template
  uvx copier copy -r HEAD . _temp/manual/test-template

# Run all test-related recipes
test-all: (test "general") (test "r")

# Clean up any leftover and temporary build files
cleanup:
  rm -rf _temp

# Re-build the README file from the Quarto version
build-readme:
  uvx --from quarto quarto render README.qmd --to gfm

# Generate a Quarto include file with the contributors
build-contributors:
  sh ./tools/get-contributors.sh rostools/template-workshop > docs/includes/_contributors.qmd

# Build the website using Quarto
build-website:
  uvx --from quarto quarto render

# Preview the website with automatic reload on changes
preview-website:
  quarto preview

# Run all build-related recipes
build-all: build-contributors build-website build-readme

# Check for and apply updates from the template
update-from-template:
  uvx copier update --defaults

# Reset repo changes to match the template
reset-from-template:
  uvx copier recopy --defaults
