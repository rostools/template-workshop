@_default:
  just --list --unsorted

# Run all recipes
run-all: check-spelling check-commits update-quarto-theme (test "General") (test "R") cleanup

# Install or update the pre-commit hooks
install-precommit:
  # Install pre-commit hooks
  uvx pre-commit install
  # Run pre-commit hooks on all files
  uvx pre-commit run --all-files
  # Update versions of pre-commit hooks
  uvx pre-commit autoupdate

# Check spelling
check-spelling:
  uvx typos

# Run checks on commits with non-main branches
check-commits:
  #!/bin/zsh
  branch_name=$(git rev-parse --abbrev-ref HEAD)
  number_of_commits=$(git rev-list --count HEAD ^main)
  if [[ ${branch_name} != "main" && ${number_of_commits} -gt 0 ]]
  then
    uv run cz check --rev-range main..HEAD
  else
    echo "Can't either be on ${branch_name} or have more than ${number_of_commits}."
  fi

# Update the Quarto rostools-theme extension
update-quarto-theme:
  (cd template && quarto add rostools/rostools-theme --no-prompt)

# Test the template by generating a workshop from it
test type:
  #!/bin/zsh
  # List options with `--data`
  temp_dir="_temp/test/workshop"
  mkdir -p $temp_dir
  uvx copier copy --vcs-ref=HEAD . $temp_dir \
    --defaults \
    --data workshop_type="{{type}}" \
    --data workshop_github="https://github.com/user/repo" \
    --data workshop_url="https://github.com/user/repo" \
    --data author_name="John Smith" \
    --data author_email="john@example.com"
  cd $temp_dir
  # Test that it gets added as Git repo.
  git init
  git add .
  just check-spelling

# Clean up after testing the template
cleanup:
  # Remove the test workshop
  rm -rf _temp/
