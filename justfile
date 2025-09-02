@_default:
    just --list --unsorted

@_checks: check-spelling check-commits
@_tests: (test "general") (test "r")
@_builds: build-contributors build-readme build-website
@_updates: update-quarto-theme update-template

# Run all build-related recipes in the justfile
run-all: _updates _checks _tests _builds

# Install and update the pre-commit hooks
install-precommit:
  # Install pre-commit hooks
  uvx pre-commit install
  # Run pre-commit hooks on all files
  uvx pre-commit run --all-files
  # Update versions of pre-commit hooks
  uvx pre-commit autoupdate

# Update the Quarto rostools-theme extension
update-quarto-theme:
  # Will also add if it isn't already installed.
  quarto update rostools/rostools-theme --no-prompt

# Update files in the template from the copier parent folder
update-template:
  cp .pre-commit-config.yaml .gitignore .typos.toml .editorconfig CODE_OF_CONDUCT.md template/
  mkdir -p template/tools
  cp tools/get-contributors.sh template/tools/
  cp .github/dependabot.yml .github/pull_request_template.md template/.github/
  cp -r _extensions/ template/

# Check the commit messages on the current branch that are not on the main branch
check-commits:
  #!/usr/bin/env bash
  branch_name=$(git rev-parse --abbrev-ref HEAD)
  number_of_commits=$(git rev-list --count HEAD ^main)
  if [[ ${branch_name} != "main" && ${number_of_commits} -gt 0 ]]
  then
    # If there is an issue, run `uv tool update-shell`.
    uvx --from commitizen cz check --rev-range main..HEAD
  else
    echo "On 'main' or current branch doesn't have any commits."
  fi

# Check for spelling errors in files
check-spelling:
  uvx typos

# Test that a workshop can be created from the template, with parameters for: `type` (r or general)
test type="r":
  sh ./test-template.sh {{ type }}

# Test the template through the manual, question-based approach
test-manual:
  mkdir -p _temp/manual/
  rm -rf _temp/manual/test-template
  uvx copier copy --trust -r HEAD . _temp/manual/test-template

# Build the website using Quarto
build-website:
  uvx --from quarto quarto render

# Re-build the README file from the Quarto version
build-readme:
  uvx --from quarto quarto render README.qmd --to gfm

# Generate a Quarto include file with the contributors
build-contributors:
  sh ./tools/get-contributors.sh rostools/template-workshop

# Clean up any leftover and temporary build files
cleanup:
  rm -rf _temp
