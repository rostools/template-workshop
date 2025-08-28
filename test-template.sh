#!/usr/bin/env bash

# Needs two arguments:
#
# 1. type: 'r' or 'general'

# Argument naming -----
type="${1}"

if [ -z "$type" ]; then
  echo "Usage: sh $0 <type>"
  echo "Example: sh $0 r"
  exit 1
fi

# Set up variables and functions for the test -----
test_name="test-workshop"
test_dir="$(pwd)/_temp/$type/$test_name"
template_dir="$(pwd)"
# Use the latest commit for the template
commit=$(git rev-parse HEAD)

# Needs three arguments:
#
# 1. Template directory
# 2. Destination directory
# 3. VCS ref (commit, branch, tag, etc.)
copy () {
  # vcs-ref means the current commit/head, not a tag.
  uvx copier copy $1 $2 \
    --vcs-ref=$3 \
    --defaults \
    --data workshop_type="$type" \
    --data github_user="first-last" \
    --data author_given_name="First" \
    --data author_family_name="Last" \
    --data github_board_number=22 \
    --overwrite \
    --skip-tasks \
    --trust
}

# Pre-test setup -----
# Remove the leftover directory from previous runs
rm -rf $test_dir
mkdir -p $test_dir

# Check initial creation -----
# TODO: Find some way to test the `update` command
# Any step that fails will exit the script with an error and not continue
echo "Testing copy for new projects when: 'type'='$type' -----------"
(
  cd $test_dir &&
    copy $template_dir $test_dir $commit &&
    git init -b main &&
    git add . &&
    git commit --quiet -m "test: initial copy" &&
    # Check that recopy works -----
    echo "Testing recopy when: 'type'='$type' -----------" &&
    rm .cz.toml &&
    git add . &&
    git commit --quiet -m "test: preparing to recopy from the template" &&
    uvx copier recopy \
      --vcs-ref=$commit \
      --defaults \
      --overwrite \
      --skip-tasks \
      --trust &&
    # Check that copying onto an existing website works -----
    echo "Testing copy in existing projects when: 'type'='$type' -----------" &&
    rm .cz.toml .copier-answers.yml &&
    git add . &&
    git commit --quiet -m "test: preparing to copy onto an existing website" &&
    copy $template_dir $test_dir $commit
)
