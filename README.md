# `template-workshop`: A template for creating Quarto-based workshops

[![Copier](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/copier-org/copier/master/img/badge/badge-grayscale-inverted-border-teal.json)](https://github.com/copier-org/copier)
[![pre-commit.ci status](https://results.pre-commit.ci/badge/github/rostools/tempate-workshop/main.svg)](https://results.pre-commit.ci/latest/github/rostools/template-workshop/main)
[![GitHub Release](https://img.shields.io/github/v/release/rostools/template-workshop)](https://github.com/rostools/template-workshop/releases/latest)


Release
Zenodo DOI

## Features

- Uses [Quarto](https://quarto.org/) for the workshop content, allowing for easy
  integration of code, text, and figures.
- Includes a [justfile](https://just.systems/man/en/) for managing common tasks
  like building the workshop and running checks.
- Uses [typos](https://github.com/crate-ci/typos) to check for common
  spelling mistakes.
- For R projects, uses [Air](https://posit-dev.github.io/air/) to format and check
  R code.
- Uses [Commitizen](https://commitizen-tools.github.io/commitizen/) to check
  commit messages, create the changelog, tag the repository, and create a
  a GitHub release.
- Uses a [CC-BY-4.0](https://creativecommons.org/licenses/by/4.0/) license.
- Run checks with with [pre-commit](https://pre-commit.com/) hooks to ensure
  consistent formatting and style across the project. It includes checks for
  credentials, typos, and file formatting.
- Uses [rostools-theme]() Quarto extension for a standard appearance across
  workshops.
- Includes [GitHub Actions](https://docs.github.com/en/actions) for continuous
  integration and delivery for running checks, formatting, releasing, and building
  the website.
- Uses [Netlify](https://www.netlify.com/) for hosting the workshop website,
  which is automatically built and deployed with Quarto's GitHub Action workflow.
- Includes an [EditorConfig](https://editorconfig.org/) file to ensure consistent
  formatting across different editors.
- Sets some common VS Code settings for the project, including suggesting
  extensions


## Using

This template uses [Copier](https://copier.readthedocs.io/) to create a folder
with relevant files for a rostools-structured workshop. We use
[uv](https://docs.astral.sh/uv) to run the commands, so you'll need to install
that first. After that, creating a new workshop project folder can be done with:

```bash
uvx copier copy gh:rostools/template-workshop WORKSHOP-NAME
```

Where `WORKSHOP-NAME` is the name of the folder you want to create. This will
copy the template files into that folder, and you can then edit them as needed.
When you use it, it will ask you a series of questions to correctly set up the
workshop folder.
