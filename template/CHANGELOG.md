# Changelog

Since we follow [Conventional
Commits](https://decisions.seedcase-project.org/why-conventional-commits)
when writing commit messages, we're able to automatically create formal
"releases" of the workshop based on what the commit message says.
Releases in the context of workshops are simply snapshots in time of the
workshop content that we publish automatically to Zenodo for easier
discovery, archival, and citation purposes. We use
[Commitizen](https://decisions.seedcase-project.org/why-semantic-release-with-commitizen)
to be able to automatically create these releases, which uses
[SemVar](https://semverdoc.org) as the version numbering scheme (`0.0.0`
means `MAJOR.MINOR.PATCH`).

Because a new release can be created based on the commit message,
releases can happen quite often, sometimes several in a day. It also
means any individual release will not have many changes within it. Below
is a list of the releases we've made so far, along with what was changed
within it.

If you attended a workshop or used the workshop material as some point
in time, you can always refer to this changelog page to find out what
has been changed since you last used it.
