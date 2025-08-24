@_default:
    just --list --unsorted

@_checks: check-spelling check-commits
@_tests: (test "general") (test "r")
@_builds: build-website build-readme
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
  quarto add rostools/rostools-theme --no-prompt

# Update files in the template from the copier parent folder
update-template:
  cp .pre-commit-config.yaml .gitignore .typos.toml .editorconfig CODE_OF_CONDUCT.md template/
  mkdir -p template/tools
  cp tools/get-contributors.sh template/tools/
  cp .github/dependabot.yml .github/pull_request_template.md template/.github/
  cp -r _extensions/ template/_extensions/

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

# Test and check that a workshop can be created from the template
test type:
  #!/usr/bin/env bash
  test_name="test-workshop-{{type}}"
  test_dir="$(pwd)/_temp/$test_name"
  template_dir="$(pwd)"
  commit=$(git rev-parse HEAD)
  rm -rf $test_dir
  # vcs-ref means the current commit/head, not a tag.
  uvx copier copy $template_dir $test_dir \
    --vcs-ref=$commit \
    --defaults \
    --trust \
    --data workshop_type="{{type}}" \
    --data github_user="first-last" \
    --data author_given_name="First" \
    --data author_family_name="Last" \
    --data github_board_number=22
  # Run checks in the generated test data package
  cd $test_dir
  git add .
  git commit -m "test: initial copy"
  just check-spelling
  # TODO: Find some way to test the `update` command
  # Check that recopy works
  echo "Testing recopy command -----------"
  rm .cz.toml
  git add .
  git commit -m "test: preparing to recopy from the template"
  uvx copier recopy \
    --vcs-ref=$commit \
    --defaults \
    --overwrite \
    --trust
  # Check that copying onto an existing data package works
  echo "Using the template in an existing package command -----------"
  rm .cz.toml .copier-answers.yml LICENSE.md
  git add .
  git commit -m "test: preparing to copy onto an existing package"
  uvx copier copy \
    $template_dir $test_dir \
    --vcs-ref=$commit \
    --defaults \
    --trust \
    --overwrite \
    --data workshop_type="{{type}}" \
    --data github_user="first-last" \
    --data author_given_name="First" \
    --data author_family_name="Last" \
    --data github_board_number=22

# Build the website using Quarto
build-website:
  uvx --from quarto quarto render

# Re-build the README file from the Quarto version
build-readme:
  uvx --from quarto quarto render README.qmd --to gfm

# Clean up any leftover and temporary build files
cleanup:
  rm -rf _temp

