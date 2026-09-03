# Changelog

Since we follow [Conventional
Commits](https://decisions.seedcase-project.org/why-conventional-commits/) when
writing commit messages, we're able to automatically create formal "releases" of
the template based on the commit messages. Releases in the context of template
are when changes occur to the `template/` files or to the `copier.yaml` files.
The releases are also published to Zenodo for easier discovery, archival, and
citation purposes. We use
[Cocogitto](https://decisions.seedcase-project.org/why-semantic-release-with-cocogitto/)
to be able to automatically create these releases, which uses
[SemVar](https://semverdoc.org) as the version numbering scheme, and [Git
Cliff](https://decisions.seedcase-project.org/why-changelog-with-git-cliff/) to
generate the changelog based on the commit messages.

Because releases are created based on commit messages, a new release is created
quite often---sometimes several times in a day. This also means that any
individual release will not have many changes within it. Below is a list of the
releases we've made so far, along with what was changed within each release.

Commits from bots, like `dependabot` or `pre-commit-ci`, are not included in the
changelog.

## [0.14.0](https://github.com/rostools/template-workshop/compare/0.13.0..0.14.0) - 2026-09-03

### ✨ Features

- Add a `TODO.md` file to the template
  [#150](https://github.com/rostools/template-workshop/pull/150) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([1a6fd6a](https://github.com/rostools/template-workshop/commit/1a6fd6ac554ec811b2dc933e23aa476b84876248))

### 🐛 Fixes

- Set path of typos config to new location in `.config/`
  [#142](https://github.com/rostools/template-workshop/pull/142) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([08a0dca](https://github.com/rostools/template-workshop/commit/08a0dca2f6ff36f30ac76a059eeb67db69adcbc8))

### ♻️ Refactor

- Wrap rostools-specific content for easier non-rostools usage
  [#141](https://github.com/rostools/template-workshop/pull/141) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([b283fa4](https://github.com/rostools/template-workshop/commit/b283fa4331d4f35bb08c8e3419e31b29d9e70f96))
- Update config files from synching
  [#149](https://github.com/rostools/template-workshop/pull/149) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([6bbb05c](https://github.com/rostools/template-workshop/commit/6bbb05c2c54f39406ee300ccb47d75567ef458a3))

### 💄 Styling

- Reformat template Markdown files
  [#148](https://github.com/rostools/template-workshop/pull/148) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([d75dd32](https://github.com/rostools/template-workshop/commit/d75dd32ceaa02c443d2545ba2b44a6541c0995f5))

### 👩‍💻 Miscellaneous

- Ignore typos in `CHANGELOG.md`, as hashes are false positives
  [#145](https://github.com/rostools/template-workshop/pull/145) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([2904410](https://github.com/rostools/template-workshop/commit/2904410054abcd7011a39211c84fb1d3c78a1b75))
- Fixes and updates to justfile, matching t-squared
  [#144](https://github.com/rostools/template-workshop/pull/144) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([ebf621b](https://github.com/rostools/template-workshop/commit/ebf621bb7cc2a191e3a2607ef643eb1eed7965df))
- Ignore Jinja Markdown files when formatting Markdown
  [#146](https://github.com/rostools/template-workshop/pull/146) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([613481e](https://github.com/rostools/template-workshop/commit/613481e34a21e52e80b024b077b7977d4e09ceb8))

### ⏪ Revert

- Fix false positive change from typos
  [#147](https://github.com/rostools/template-workshop/pull/147) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([e83badf](https://github.com/rostools/template-workshop/commit/e83badf431f65ff113bf12aaeacc420af4040442))

## [0.13.0](https://github.com/rostools/template-workshop/compare/0.12.0..0.13.0) - 2026-09-03

### ✨ Features

- Add Jarl linter [#138](https://github.com/rostools/template-workshop/pull/138)
  by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([a4565eb](https://github.com/rostools/template-workshop/commit/a4565ebb05432b6c725a55ad9283cc3cbf5c410d))
- Add Typst PDF output to `_quarto.yml`
  [#140](https://github.com/rostools/template-workshop/pull/140) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([db6adab](https://github.com/rostools/template-workshop/commit/db6adab862d7dbc4c0e296fb4c68a16a32f267cf))

### 🐛 Fixes

- Add missing `hosting_provider` question
  [#139](https://github.com/rostools/template-workshop/pull/139) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([c4af7e5](https://github.com/rostools/template-workshop/commit/c4af7e560312977aef52846d704768283ace4741))

## [0.12.0](https://github.com/rostools/template-workshop/compare/0.11.1..0.12.0) - 2026-09-03

### ✨ Features

- Add Panache Markdown formatter
  [#136](https://github.com/rostools/template-workshop/pull/136) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([5333848](https://github.com/rostools/template-workshop/commit/5333848c8bc218a45a6055303b2289a8e4c9fc97))

### ♻️ Refactor

- Move `rumdl.toml` and `typos.toml` into `.config/`
  [#132](https://github.com/rostools/template-workshop/pull/132) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([fc8fb4b](https://github.com/rostools/template-workshop/commit/fc8fb4b7167335ba73916de5d199d14c8e5af8e9))
- Move workflow checks into one workflow file
  [#134](https://github.com/rostools/template-workshop/pull/134) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([7a27831](https://github.com/rostools/template-workshop/commit/7a27831c01b92b6c051627550cd880f22cde6113))
- Switch to use Cocogitto and git-cliff for releases
  [#135](https://github.com/rostools/template-workshop/pull/135) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([19eba88](https://github.com/rostools/template-workshop/commit/19eba885fefcf7de56d6ccd1a01af76dda50b134))
- Simplify and update justfile based on t-squared
  [#137](https://github.com/rostools/template-workshop/pull/137) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([d5be11b](https://github.com/rostools/template-workshop/commit/d5be11be4a7c548247f97a436bdfc2d312209d5a))

## [0.11.1](https://github.com/rostools/template-workshop/compare/0.11.0..0.11.1) - 2026-09-03

### 🐛 Fixes

- Windows compatibility
  [#116](https://github.com/rostools/template-workshop/pull/116) by
  [`@DanMazJen`](https://github.com/DanMazJen)
  ([57d2044](https://github.com/rostools/template-workshop/commit/57d20448d7f45823a83b7737364777d26aed7e32))

### 📝 Documentation

- Update description of dependencies
  [#115](https://github.com/rostools/template-workshop/pull/115) by
  [`@DanMazJen`](https://github.com/DanMazJen)
  ([17c0eaf](https://github.com/rostools/template-workshop/commit/17c0eafe59d43f01b8e33a39e3e6246cdf90de62))

### 👷 CI/CD

- Switch to Cocogitto and git-cliff
  [#111](https://github.com/rostools/template-workshop/pull/111) by
  [`@DanMazJen`](https://github.com/DanMazJen)
  ([05dc929](https://github.com/rostools/template-workshop/commit/05dc92978e988efacff37faf0afc22450e72c32a))
- Update checks workflow and typos
  [#113](https://github.com/rostools/template-workshop/pull/113) by
  [`@DanMazJen`](https://github.com/DanMazJen)
  ([e564847](https://github.com/rostools/template-workshop/commit/e564847663a8fb9aa4b2b83fce5249953596070f))
- Ignore merge commit checks in release
  [#129](https://github.com/rostools/template-workshop/pull/129) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([003cbb0](https://github.com/rostools/template-workshop/commit/003cbb0c1f794764af8adcb479346a840a5cd49f))
- Remove leftover workflows (in `checks` now)
  [#131](https://github.com/rostools/template-workshop/pull/131) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([fe31382](https://github.com/rostools/template-workshop/commit/fe3138255d87125e91f6f14d933431fc736743cc))

### 👩‍💻 Miscellaneous

- Add Panache as Markdown formatter
  [#112](https://github.com/rostools/template-workshop/pull/112) by
  [`@DanMazJen`](https://github.com/DanMazJen)
  ([29665e3](https://github.com/rostools/template-workshop/commit/29665e358e882904a3832787e9f8f00b8bf5cbef))
- Update justfile from template
  [#114](https://github.com/rostools/template-workshop/pull/114) by
  [`@DanMazJen`](https://github.com/DanMazJen)
  ([1d93243](https://github.com/rostools/template-workshop/commit/1d93243cb17548cffed4517095345d9341f4bb5d))
- Update Copier answers
  [#110](https://github.com/rostools/template-workshop/pull/110) by
  [`@DanMazJen`](https://github.com/DanMazJen)
  ([df0d6e0](https://github.com/rostools/template-workshop/commit/df0d6e0ddd9480628c88cedd4d717aa490cb3ab0))
- Add code of conduct to website sidebar
  [#126](https://github.com/rostools/template-workshop/pull/126) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([36e93f4](https://github.com/rostools/template-workshop/commit/36e93f4204f4013a94cb0cdfe9d58f9d7732082a))
- Move next steps above updating
  [#127](https://github.com/rostools/template-workshop/pull/127) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([05cd3d9](https://github.com/rostools/template-workshop/commit/05cd3d97b2d8c58562cf0d4e880196f91ce5c25d))
- Add license to website footer
  [#128](https://github.com/rostools/template-workshop/pull/128) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([176ada5](https://github.com/rostools/template-workshop/commit/176ada5a86bc2c0742fb7c8df6d6aa0c99b36ef1))
- Add Daniel to author list in `CITATION.cff`
  [#125](https://github.com/rostools/template-workshop/pull/125) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([aa1c8ff](https://github.com/rostools/template-workshop/commit/aa1c8ff7178907c493cf5045275816f1e75db08e))
- Remove `[]` Markdown syntax from first release in CHANGELOG
  [#130](https://github.com/rostools/template-workshop/pull/130) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([0536fd4](https://github.com/rostools/template-workshop/commit/0536fd47b97d8923dd47cab4fed343585c79f4d1))

### ❤️ New contributors

- [`@DanMazJen`](https://github.com/DanMazJen) made their first contribution in
  [#113](https://github.com/rostools/template-workshop/pull/113)

## [0.9.0](https://github.com/rostools/template-workshop/compare/0.8.2..0.9.0) - 2026-04-25

### ✨ Features

- Include styler recipe in justfile, to format R in `.qmd` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([9c991a7](https://github.com/rostools/template-workshop/commit/9c991a799fd221dbed531082cc3abe93e609dc6d))
- Add URN for eventual `zen-do` PDF upload by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([5f8b869](https://github.com/rostools/template-workshop/commit/5f8b8699e98bda48bbf28d0d1bba47854d34e6c4))
- Create soft link to extension in justfile by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([60c69d1](https://github.com/rostools/template-workshop/commit/60c69d16739dc32bcb3760076591a81fe12f637e))

### 🐛 Fixes

- Update path to release workflow by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([1c09fc2](https://github.com/rostools/template-workshop/commit/1c09fc2f78b5969aa3e034ec5afa545bf2be9260))
- Fix issues found during testing by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([c83df00](https://github.com/rostools/template-workshop/commit/c83df002811fe3c5554d4da9b7acf68bcec21cf6))

### ♻️ Refactor

- Sort contributors in tool script by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([b63e3b2](https://github.com/rostools/template-workshop/commit/b63e3b21e601f6c118ca88d37b6f90df1c4024c7))
- Update pre-commit versions by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([528c2d0](https://github.com/rostools/template-workshop/commit/528c2d0b94f44396273fe67794f7bf5bc95f6ac2))
- Shorten recipe to `just install-deps` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([9033962](https://github.com/rostools/template-workshop/commit/90339628dd1a46a24d47c1b5c8f3f6d19edc2474))
- Small formatting fixes to pre-workshop tasks files by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([ff83c1a](https://github.com/rostools/template-workshop/commit/ff83c1a8bc9078ade5f42dc7beb2150d549accfe))
- Simplify metadata values to match t-squared by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([3a599f8](https://github.com/rostools/template-workshop/commit/3a599f829f1d648bb039c89bba70e7b1030eb945))
- Simplify the Copier questions asked, removing unnecessary ones by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([80a2c04](https://github.com/rostools/template-workshop/commit/80a2c04a27397f4f5674518dd7d5f8d0454738a2))
- Don't use reusable workflows, include full steps by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([17d69e5](https://github.com/rostools/template-workshop/commit/17d69e52c37dbed6caa792cb72461a597b7232d5))
- Simplify VS Code settings by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([524608e](https://github.com/rostools/template-workshop/commit/524608e7f148b2cb36ea33a8652d6f6055507602))
- Sync extensions and snippets with template by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([05c2051](https://github.com/rostools/template-workshop/commit/05c2051590c56a249be3e1f025282aa1379b3144))
- Sync files to template by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([33986a2](https://github.com/rostools/template-workshop/commit/33986a28b70cd3d09f932fc7804c42f3bf062404))
- Set some vscode settings only for R workshops by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([8314ce9](https://github.com/rostools/template-workshop/commit/8314ce9299b73f8c16500ba5b409ebcd20fceef7))
- Rostools extension only added for rostools projects by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([7f1d8a8](https://github.com/rostools/template-workshop/commit/7f1d8a836c3c6d0cc6f023fcf978e338e81bc4e3))
- Set auto-release files only for rostools templates by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([a64ad79](https://github.com/rostools/template-workshop/commit/a64ad7917f536701627661d191359967945764f7))
- `_publish.yaml` should only be added for Netlify projects by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([f53d731](https://github.com/rostools/template-workshop/commit/f53d731b7447b9d738a2d07d6d6c28d8793cfb47))
- Small improvements to text in CODEOWNERS by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([827bf06](https://github.com/rostools/template-workshop/commit/827bf064f0f3195a44e8ae3077fb2800791b5f3e))
- Move explanation of files into CONTRIBUTING by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([79fc8d8](https://github.com/rostools/template-workshop/commit/79fc8d815a5abd135c087ce308f6198ea675f0f9))
- Change format of slides if its for rostools or not by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([761aa9c](https://github.com/rostools/template-workshop/commit/761aa9ce92e900766b43ecec3493ec2e1a0024d6))
- Reformat files by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([1de0c81](https://github.com/rostools/template-workshop/commit/1de0c817f48787500fb1b0b4ed9f02b531557428))
- Update Quarto theme by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([8bf0344](https://github.com/rostools/template-workshop/commit/8bf0344b5387461e538888273920932af4006c69))

### 📝 Documentation

- Update license year by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([88cbb37](https://github.com/rostools/template-workshop/commit/88cbb37b705102be7e3f15d6b7d36b499520ff6e))
- Add 404 page to website by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([8339b95](https://github.com/rostools/template-workshop/commit/8339b95c18b45918f2249b1fc6511970aa7af037))
- Update guide to match t-squared by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([f1ae1a0](https://github.com/rostools/template-workshop/commit/f1ae1a0a8c31568ed7b3c4e9be0333e728a38727))
- Update CONTRIBUTING based on t-squared by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([7cf6b34](https://github.com/rostools/template-workshop/commit/7cf6b34d9fe5802856de1cf66f903c95ba28cc2d))
- Update README via t-squared changes by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([2222ae3](https://github.com/rostools/template-workshop/commit/2222ae3b99a087043256dea6e81d6eae3f2e33f9))
- Clarify that there are four versions of the template by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([385d4b0](https://github.com/rostools/template-workshop/commit/385d4b0843d1a1c0b627a06e085483d20e05cba7))
- Remove completed TODO items by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([76bb250](https://github.com/rostools/template-workshop/commit/76bb25093748c0c179000a539e4ca14405c8ceba))

### 💄 Styling

- Ran Markdown formatter by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([31b5eb4](https://github.com/rostools/template-workshop/commit/31b5eb4c3513d6a69aac7dd6f2bf709ecf32e76c))

### 🧪 Tests

- Update test script to match changes by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([89f1613](https://github.com/rostools/template-workshop/commit/89f161318edc8d7482f389338946fe82431424c1))

### 👷 CI/CD

- Don't use scopes and use explicit emojis by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([b5af0e8](https://github.com/rostools/template-workshop/commit/b5af0e82a68769b6e7e41e015416bccec02e81d3))
- Updates to workflows from template by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([66a55ba](https://github.com/rostools/template-workshop/commit/66a55baf4a0b26256155aa6c341d8da0ba9962d6))

### 👩‍💻 Miscellaneous

- Update pre-commit hook versions by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([b3e781d](https://github.com/rostools/template-workshop/commit/b3e781d48a4b759c4a8312511e37b2e1feac33c2))
- Update justfile from template by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([ee3ae36](https://github.com/rostools/template-workshop/commit/ee3ae36be8c8d899fbf30788d34317b2753b481b))
- DevEx updates from applying t-squared template by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([574dc46](https://github.com/rostools/template-workshop/commit/574dc4656388e7999b8a559c2b9362878f7779ac))
- Simplify VS Code settings via t-squared by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([d1895df](https://github.com/rostools/template-workshop/commit/d1895df30c840e72abcde01e7ffabf64902a0327))
- Use `tagline` instead of `titles.full` in `_metadata.yaml` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([e44aa58](https://github.com/rostools/template-workshop/commit/e44aa58fa6b53485b67d92ed9469b6ba3f55d4e2))
- Update pre-commit hook version by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([68e86d1](https://github.com/rostools/template-workshop/commit/68e86d1d1d6bcadef420e87fee85f19bb34f7e5f))
- Should be `rostools-theme`, not `seedcase-theme` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([e5961d1](https://github.com/rostools/template-workshop/commit/e5961d194a8451f8bf5eca3c8e8a82502d4a1dc7))
- Don't look in `_temp/` and `_book/` for TODOs by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([05e068d](https://github.com/rostools/template-workshop/commit/05e068de85af0af9f97a0bc089e32a0900e907aa))
- Expand test suite in justfile by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([437b8d8](https://github.com/rostools/template-workshop/commit/437b8d8261a05f7c87905c544e18039a758292f1))

## [0.8.2](https://github.com/rostools/template-workshop/compare/0.8.1..0.8.2) - 2026-04-07

### 🐛 Fixes

- Need to use two `##`, not three for panel-tabset by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([3d1e04c](https://github.com/rostools/template-workshop/commit/3d1e04c3d2bbf8b49743e2159b5328f300468b72))
- Small corrections to installing R packages doc by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([819fa82](https://github.com/rostools/template-workshop/commit/819fa82d5a55bcd10202f298c2a28b8df7a89bc6))

## [0.8.1](https://github.com/rostools/template-workshop/compare/0.8.0..0.8.1) - 2026-04-06

### 🐛 Fixes

- Solution chunk should be a callout and collapsed by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([f6568fe](https://github.com/rostools/template-workshop/commit/f6568fedfd126f3dffdc3c2010283a199b92a554))

## [0.8.0](https://github.com/rostools/template-workshop/compare/0.7.0..0.8.0) - 2026-04-06

### ✨ Features

- Include "solution chunk" snippet into VS Code settings by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([cc07ce8](https://github.com/rostools/template-workshop/commit/cc07ce8538033e7065913984cc3faedf51ee2248))
- Link to r-universe, don't need RTools/pak by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([f3cd7d8](https://github.com/rostools/template-workshop/commit/f3cd7d85fb83e4062be87d6c5abf30f16d8d9709))

### 🐛 Fixes

- Workflow job should be called `release-project` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([5e8913f](https://github.com/rostools/template-workshop/commit/5e8913f03608e6989ea1224e2101605fff36ba44))
- Forgot to include a `#sec-` tag in `for-teachers.qmd` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([8cbb156](https://github.com/rostools/template-workshop/commit/8cbb156cd1f02c1ab8ac264abbfebf91bd86ef7c))

### ♻️ Refactor

- Update `rostools-theme` extension by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([c2b8229](https://github.com/rostools/template-workshop/commit/c2b8229c40a8ff8a8d740865e90604e99be4e7fa))
- Small edits to justfile recipe docs by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([b22079c](https://github.com/rostools/template-workshop/commit/b22079c657d267d5e81ccb1877dd8b3cfa1a32fa))
- Explicitly use Posit Air for R formatting in VS Code settings by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([282b994](https://github.com/rostools/template-workshop/commit/282b99404a3ce78418329c5b062934af1203b4c0))
- No longer need the `workshop_level` metadata item by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([cf6546a](https://github.com/rostools/template-workshop/commit/cf6546a3afc5e20af3ff4ed75d6fe3ac06fd6731))
- Simplify learning design and use headers rather than list by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([c198fca](https://github.com/rostools/template-workshop/commit/c198fcac3e3e4d0a30668af6fe95941164c904e6))

## [0.6.0](https://github.com/rostools/template-workshop/compare/0.5.0..0.6.0) - 2026-03-26

### ✨ Features

- Include hidden contributor list sections in README and index by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([b8a3bd1](https://github.com/rostools/template-workshop/commit/b8a3bd1d91be551ff3ea137abae4263250ea673e))
- Some `.vdoc.*` type files are created by Quarto, ignore them by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([d69a38f](https://github.com/rostools/template-workshop/commit/d69a38f21d54c36f75c6190b4c44738c84af1069))
- Standardize table widths of schedule by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([1016f74](https://github.com/rostools/template-workshop/commit/1016f74cdcedd6c897ece2292bf8362fe20668fe))
- Add badges to landing page by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([1f1bce3](https://github.com/rostools/template-workshop/commit/1f1bce3b642ab26e37668d17fe54750a0dfea809))

### 🐛 Fixes

- Correct URLs from lychee check by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([512bdb1](https://github.com/rostools/template-workshop/commit/512bdb1e948c7effcbe429a11e6eb888ef65a2bf))
- Correct URL in `copier.yaml` by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([17975c9](https://github.com/rostools/template-workshop/commit/17975c993fdd25a82998179b728bc512db493759))
- Resolve Markdown formatting issues by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([f6c9448](https://github.com/rostools/template-workshop/commit/f6c944855435f0f93f0a428da81c37ab157efadf))
- Don't format on save for `qmd`, creates `.vdoc` files everywhere by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([5fd305f](https://github.com/rostools/template-workshop/commit/5fd305f9beab2a0e8a021e2be4b50aa74790fe59))
- Match `#sec-` with filename by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([091c72c](https://github.com/rostools/template-workshop/commit/091c72c5926ce2438d118facb60c3512ef451070))

### ♻️ Refactor

- Update `rostools-theme` Quarto extension by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([40a3138](https://github.com/rostools/template-workshop/commit/40a3138226794bc29d4472214d73c17cedc74d38))
- Update pre-commit hook versions by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([2e6001b](https://github.com/rostools/template-workshop/commit/2e6001b1595f366f5d30d7fc4c27f1868330de57))
- Install uv directly, rather than first pipx by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([a826e25](https://github.com/rostools/template-workshop/commit/a826e25e853477c82ff1b2e9f2af47d5d7437eb4))
- Indent by 2 in Markdown files in `.editorconfig` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([8022a35](https://github.com/rostools/template-workshop/commit/8022a35d5f978b76367f6989cf4eea7d5fa6fb0c))
- Simplify pull request template after Markdown formatter added by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([a755a48](https://github.com/rostools/template-workshop/commit/a755a4854e88b8a21222bfe8bc0af3f6361d5968))
- Include `@sec-` links to chapters along with a link by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([40da12a](https://github.com/rostools/template-workshop/commit/40da12a321164e761d15afbca65dcb91428b9bf2))
- Use quotes around values in `_quarto.yml` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([bf50fc5](https://github.com/rostools/template-workshop/commit/bf50fc5d0b3da83e953ab65b200e2f282c75260a))
- Rename `style` to `format-r` in justfile by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([5580b5d](https://github.com/rostools/template-workshop/commit/5580b5d3e8c507442ef6fdecf74854457db27daf))

### 📝 Documentation

- Add Dependabot as feature in landing page by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([5aac7cc](https://github.com/rostools/template-workshop/commit/5aac7cc9c70f39644679a9554f69dd757f7199e8))

### 👩‍💻 Miscellaneous

- Don't copy over `.rumdl.toml` to template, they are both different by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([115a1e2](https://github.com/rostools/template-workshop/commit/115a1e2fdd743aceff484c38cbb1ec3d3e98d29f))

## [0.5.0](https://github.com/rostools/template-workshop/compare/0.4.15..0.5.0) - 2026-02-07

### ✨ Features

- Exclude latex output files from typos by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([26248d4](https://github.com/rostools/template-workshop/commit/26248d4159461e0ad8f4a8c1caac51c5a84bfd77))
- Add lychee URL checking to justfile by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([c857ddc](https://github.com/rostools/template-workshop/commit/c857ddc580814f3dabe7c2eb45e2c00db77e53d9))
- Add rumdl Markdown formatter by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([d583cef](https://github.com/rostools/template-workshop/commit/d583cef08298d7c767de757bc650fd0226a10bd8))

### 🐛 Fixes

- Clarify that RTools needs to match R by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([4cba18b](https://github.com/rostools/template-workshop/commit/4cba18b3339c01e10df6a304835f498c61480a06))
- Replace 'course' with 'workshop' by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([c43757e](https://github.com/rostools/template-workshop/commit/c43757e3c4336bdc9749ddf1df33fb3364963408))

### ♻️ Refactor

- Simplify code of conduct text by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([5cfed50](https://github.com/rostools/template-workshop/commit/5cfed50952ecdca408f0dcad7ea794ce6795632f))
- Don't need to explicitly use `theme` in `_quarto.yml` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([7d87879](https://github.com/rostools/template-workshop/commit/7d8787957a00a488dac735fb12e2c41e50e116cc))
- Ensure URLs are checked in `just run-all` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([02572be](https://github.com/rostools/template-workshop/commit/02572be5351753cbe05892ac498d70010eaf0f5f))
- Revise contributor list tool to match Markdown formatter by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([b56e8b1](https://github.com/rostools/template-workshop/commit/b56e8b1de986a58bb64ef194deed65e7652f5f01))
- Ignore auto-generated Quarto ipynb files by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([0472411](https://github.com/rostools/template-workshop/commit/0472411f40d1f38202d682ae9d2c6dab7d9e4ea2))
- Clarify that instructors are learning (in intro) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([d9bee8f](https://github.com/rostools/template-workshop/commit/d9bee8f094218b8c6fbc7a7b60b9bbbb6a3ea9c6))

### 📝 Documentation

- Match CHANGELOG intro with the template's text by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([0cf3beb](https://github.com/rostools/template-workshop/commit/0cf3bebb95426d408eb637da3d721c32ff87dabf))
- Add lychee to feature list by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([60e0da7](https://github.com/rostools/template-workshop/commit/60e0da7b702e857ae6e1bfcc81927d1dde29a75a))
- Add callout block about post-creation setup by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([cfad7dc](https://github.com/rostools/template-workshop/commit/cfad7dccf37605e93516e4ec59649e8c5cb49664))
- Clarify that `--trust` runs commands after copying by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([4fa281c](https://github.com/rostools/template-workshop/commit/4fa281c65ff85e7e9ff940f02ee2ae91f66a0602))

### 💄 Styling

- Ran Markdown formatter by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([bcaa790](https://github.com/rostools/template-workshop/commit/bcaa790634366a635532de45d0fbe5b8b42750e0))

## [0.4.15](https://github.com/rostools/template-workshop/compare/0.4.14..0.4.15) - 2025-09-17

### ♻️ Refactor

- Explain how releases work in CHANGELOG
  [#27](https://github.com/rostools/template-workshop/pull/27) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([c9a095b](https://github.com/rostools/template-workshop/commit/c9a095b2aabd5f768671ed9468742a623dce80e2))

## [0.4.14](https://github.com/rostools/template-workshop/compare/0.4.13..0.4.14) - 2025-09-08

### 🐛 Fixes

- Remove duplicate sentence in pre-workshop overview by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([e8a2d5f](https://github.com/rostools/template-workshop/commit/e8a2d5f2ab370568bab293306fb6c8c1bca7142f))
- Need to include `theme: brand` in `_quarto.yml` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([2e85c6d](https://github.com/rostools/template-workshop/commit/2e85c6dd812cab59eace62d0a04eae82278f67e6))
- Can use `svg` in License badge by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([a649245](https://github.com/rostools/template-workshop/commit/a6492452681431b39f742a76f3c3b820d3a8ad24))

### ♻️ Refactor

- Strip empty Jinja lines correctly by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([108550d](https://github.com/rostools/template-workshop/commit/108550dc4ccd8564abaa80b6ecbfe4cbc9d0c84a))

### 👷 CI/CD

- Don't need the GITHUB TOKEN anymore by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([f9f058f](https://github.com/rostools/template-workshop/commit/f9f058f584d811ac465d051bd44e00600e2f8344))
- Remove leftover, irrelevant TODO item by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([e578635](https://github.com/rostools/template-workshop/commit/e57863511ae986845c42986d9bd14ecdb69b1486))

## [0.4.13](https://github.com/rostools/template-workshop/compare/0.4.12..0.4.13) - 2025-09-03

### 🐛 Fixes

- Move `github_repo` as question to fix update issue by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([cbf9efa](https://github.com/rostools/template-workshop/commit/cbf9efa6517cd0a2246efad0794ead698d80e852))

### ♻️ Refactor

- Output `get-contributors.sh` as text, send to file in justfile by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([12032cb](https://github.com/rostools/template-workshop/commit/12032cbba8d04095a1868ce23a14dfba4691f865))

## [0.4.12](https://github.com/rostools/template-workshop/compare/0.4.11..0.4.12) - 2025-09-03

### ♻️ Refactor

- Minor text edits to pre-workshop code of conduct
  [#26](https://github.com/rostools/template-workshop/pull/26) by
  [`@signekb`](https://github.com/signekb)
  ([098dd0c](https://github.com/rostools/template-workshop/commit/098dd0c099648136b47e357997066044bf0d1fbe))

## [0.4.11](https://github.com/rostools/template-workshop/compare/0.4.10..0.4.11) - 2025-09-03

### 🐛 Fixes

- `dst_path` isn't good to use when running updates by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([a9d78f9](https://github.com/rostools/template-workshop/commit/a9d78f9e793dbc4b10ef83d57dc2171d44acbb5e))

### 💄 Styling

- Ran pre-commit hooks by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([95294ca](https://github.com/rostools/template-workshop/commit/95294ca4bc6f0257738e53808921f48857b61cb9))

## [0.4.10](https://github.com/rostools/template-workshop/compare/0.4.8..0.4.10) - 2025-09-03

### ♻️ Refactor

- Minor text edit to improve flow
  [#24](https://github.com/rostools/template-workshop/pull/24) by
  [`@signekb`](https://github.com/signekb)
  ([dcafa85](https://github.com/rostools/template-workshop/commit/dcafa8509ac90c8895bdd0abd27a58187738d389))
- Save `_contributors.yml` to `includes/` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([6ad7998](https://github.com/rostools/template-workshop/commit/6ad79989f578de609f51c158a1a6917524d95473))

### 📝 Documentation

- Add contributors section to README and index by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([68816cd](https://github.com/rostools/template-workshop/commit/68816cdb36c6a56f0931517f96061098889e3fd1))
- Use `###` for contributors by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([6b106a1](https://github.com/rostools/template-workshop/commit/6b106a1c34767bcf56a87654c2a1356a57767809))

### 👩‍💻 Miscellaneous

- Add signekb to contributors
  [#25](https://github.com/rostools/template-workshop/pull/25) by
  [`@signekb`](https://github.com/signekb)
  ([40511c0](https://github.com/rostools/template-workshop/commit/40511c07531f7b172d938f4872aca3de191dce8a))
- Save `_contributors.yml` to `docs/includes/` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([0b5cf16](https://github.com/rostools/template-workshop/commit/0b5cf1613f24ad821650415dfce3cf808058ef7d))

## [0.4.7](https://github.com/rostools/template-workshop/compare/0.4.6..0.4.7) - 2025-09-03

### ♻️ Refactor

- Minor rewrite of star-us
  [#23](https://github.com/rostools/template-workshop/pull/23) by
  [`@signekb`](https://github.com/signekb)
  ([8269475](https://github.com/rostools/template-workshop/commit/8269475cd540d731d2f293f7166f8c6cc4171374))

## [0.4.6](https://github.com/rostools/template-workshop/compare/0.4.5..0.4.6) - 2025-09-03

### ♻️ Refactor

- Minor rewrites in learning design
  [#22](https://github.com/rostools/template-workshop/pull/22) by
  [`@signekb`](https://github.com/signekb)
  ([a630689](https://github.com/rostools/template-workshop/commit/a630689bec8cb0a38a67fd5f5f1fdbb99a721cec))

### ❤️ New contributors

- [`@signekb`](https://github.com/signekb) made their first contribution in
  [#22](https://github.com/rostools/template-workshop/pull/22)

## [0.4.5](https://github.com/rostools/template-workshop/compare/0.4.4..0.4.5) - 2025-09-02

### 🐛 Fixes

- Correctly strip empty jinja lines by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([93dd56b](https://github.com/rostools/template-workshop/commit/93dd56bba23052e2f9cf2aaa6ba86dbdc5b9875e))

### ♻️ Refactor

- Should be `isIdenticalTo` and `lesson` in `.zenodo.json` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([1d85f07](https://github.com/rostools/template-workshop/commit/1d85f076f0ea414385a10b966f1949a2a1be86d9))

## [0.4.4](https://github.com/rostools/template-workshop/compare/0.4.3..0.4.4) - 2025-09-02

### 🐛 Fixes

- Need to check for existence of `github_repo` first by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([724b9ae](https://github.com/rostools/template-workshop/commit/724b9ae7e9da80f1093cb43120d082116d54327a))

### 💄 Styling

- Add extra spacing for subitem in `_quarto.yml` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([c47b577](https://github.com/rostools/template-workshop/commit/c47b577d2f9b03c7f450a59bdda41cb2917a2c16))

## [0.4.3](https://github.com/rostools/template-workshop/compare/0.4.2..0.4.3) - 2025-09-02

### 🐛 Fixes

- This badge is default `svg`, don't end with it by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([794a875](https://github.com/rostools/template-workshop/commit/794a87557750fd85a0894650232efe1c4bf4d2d0))

### 📝 Documentation

- Fix typo in CHANGELOG by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([bd57cb7](https://github.com/rostools/template-workshop/commit/bd57cb78320f766a01b12b3ff079bd65c6b19db8))
- Can't use `svg` for this badge by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([14e8586](https://github.com/rostools/template-workshop/commit/14e858608b04f1883703a397a6829e5a1af40b23))

## [0.4.2](https://github.com/rostools/template-workshop/compare/0.4.1..0.4.2) - 2025-09-02

### ♻️ Refactor

- Remove trailing `/` from URL by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([7bef860](https://github.com/rostools/template-workshop/commit/7bef860468ed4bb7a8436f4c5c80dcfc68bf60f7))
- Ignore irrelevant dirs when listing TODOs by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([8b1aa10](https://github.com/rostools/template-workshop/commit/8b1aa10674e08b670e6a97a5277c46ce0f5dfbeb))
- Include `revert` as a branch tag by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([a4a891e](https://github.com/rostools/template-workshop/commit/a4a891e4ccfa80f5a2a14e5b49046acf1b29a1bd))

## [0.4.1](https://github.com/rostools/template-workshop/compare/0.4.0..0.4.1) - 2025-08-29

### 🐛 Fixes

- No spaces around em-dashes by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([359f3ce](https://github.com/rostools/template-workshop/commit/359f3ce35dcfcd7b86d98c19b9288cfa3f24f7e2))

### ♻️ Refactor

- Update pre-commit hook versions by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([cf7bf30](https://github.com/rostools/template-workshop/commit/cf7bf301b3e42118f85d1484bd53de698b622853))
- Use `quarto update` to match recipe name by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([dd2d552](https://github.com/rostools/template-workshop/commit/dd2d55201e2b7b01ed08c547c51dfdb3f875d2cf))
- Exclude justfile when listing TODOs by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([8bc9c8b](https://github.com/rostools/template-workshop/commit/8bc9c8bc51f0152b73fa5fbe48073f4cbc06ce1a))
- Replace ending of `_contributors.yml` with newline for pre-commit styling by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([d58e806](https://github.com/rostools/template-workshop/commit/d58e8069d689c9cdd11a02a7231355af1f965fcc))
- Simplify some text of the README by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([44f7699](https://github.com/rostools/template-workshop/commit/44f76999b5237a1d2c4eec7d92632ac2be9dd2fa))

### 📝 Documentation

- Add MIT license by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([f6d1390](https://github.com/rostools/template-workshop/commit/f6d1390b50a87598c3b4306ffbd4570e4537427e))

### 👩‍💻 Miscellaneous

- Use `rostools-theme` for project in `_quarto.yml` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([3698f9a](https://github.com/rostools/template-workshop/commit/3698f9a2f4669d9e1276c3fd1e2bd883d197f892))

## [0.4.0](https://github.com/rostools/template-workshop/compare/0.3.2..0.4.0) - 2025-08-29

### 🐛 Fixes

- CONTRIBUTING in template shouldn't refer to "template" by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([6f6b0a8](https://github.com/rostools/template-workshop/commit/6f6b0a8e274f40213ceac18b1ae7283c0b1002ca))
- Removed left over note in `justfile` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([9f16d0f](https://github.com/rostools/template-workshop/commit/9f16d0f7f3318733928efc171e94a215872c6e98))
- Should say "teach", not "instruct" by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([8d01054](https://github.com/rostools/template-workshop/commit/8d01054cb98e3cc29ca4a5b4c1b046200792474c))

### ♻️ Refactor

- Mention that some files are for development too by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([ff91448](https://github.com/rostools/template-workshop/commit/ff9144899e058d8003f7f69780d02c21b0b76c5c))
- Use less emojis and a specific star in `star-us` includes by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([519d704](https://github.com/rostools/template-workshop/commit/519d70463a20067f1b062b2b3e755d151e048ef1))

## [0.3.2](https://github.com/rostools/template-workshop/compare/0.3.1..0.3.2) - 2025-08-29

### ✨ Features

- Add GoatCounter HTML script by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([678f696](https://github.com/rostools/template-workshop/commit/678f696675d7042154dc8df7c323fa69b53c906c))

### ♻️ Refactor

- `Rproj` file should only be added for R workshops by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([f338d73](https://github.com/rostools/template-workshop/commit/f338d73013dc6b36592c1f0503c211bd3012ff02))
- Strip empty Jinja lines by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([a0fa2ec](https://github.com/rostools/template-workshop/commit/a0fa2ec5d587d4dbd1be6988f58269955fdc617b))

## [0.3.1](https://github.com/rostools/template-workshop/compare/0.3.0..0.3.1) - 2025-08-28

### 🐛 Fixes

- Should be `knitr` in the `Rproj` file, not `Sweave` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([202c051](https://github.com/rostools/template-workshop/commit/202c051230456274836ccb58f9466c45d4b89e17))
- Should be `>-` for validating by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([d437218](https://github.com/rostools/template-workshop/commit/d43721843498726502e2d79bceb4133f075a7ba6))
- Forgot to include commas in `.zenodo.json` fields by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([b3734e5](https://github.com/rostools/template-workshop/commit/b3734e5e7154dfb0a2a628c74c54c4db82a57618))

### ♻️ Refactor

- Abbrev `meta` isn't used anywhere by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([0ba3062](https://github.com/rostools/template-workshop/commit/0ba3062561165a3393d1a250962a49ebc509c9d0))
- Wrap text in README in a callout block for separation by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([8b889a8](https://github.com/rostools/template-workshop/commit/8b889a8bec8b336234a3c0f09ede0ca649136ca3))

### 🧪 Tests

- Use `-r HEAD` to include uncommitted changes by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([53c0054](https://github.com/rostools/template-workshop/commit/53c0054b8d02b95603608a1a43e34ce86a08ce09))

### 👩‍💻 Miscellaneous

- Add manual test recipe in justfile
  [#19](https://github.com/rostools/template-workshop/pull/19) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([324b72a](https://github.com/rostools/template-workshop/commit/324b72a2857b5b849d30433098730e58a3d9137f))

## [0.3.0](https://github.com/rostools/template-workshop/compare/0.2.0..0.3.0) - 2025-08-28

### ✨ Features

- Include changelog in website, plus add more text in it by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([6231120](https://github.com/rostools/template-workshop/commit/623112041ae02fadf88b914fbab5d1243a1eecd2))

### 🐛 Fixes

- Need to store `github_repo` in answers file by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([8ed028c](https://github.com/rostools/template-workshop/commit/8ed028c529f506312648fd97097e5db6a441f422))
- Point contributor script to generated template repo by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([39ab89d](https://github.com/rostools/template-workshop/commit/39ab89dac04bf609df29b1089deda89e732af62e))

### ♻️ Refactor

- Keep assignee empty in Dependabot PRs by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([292c395](https://github.com/rostools/template-workshop/commit/292c395de666ad28be6aa6f5d688429c71100e99))
- Use `svg` for copier badge by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([87bdced](https://github.com/rostools/template-workshop/commit/87bdced2a3a2c01f95a0615b537fc4e5001b61eb))
- Build contributor list in justfile, not Quarto config by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([8f777e2](https://github.com/rostools/template-workshop/commit/8f777e2b86249c870cb1bd0022207c24dad265f0))
- Use shorter link to LICENSE in README by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([6af92b8](https://github.com/rostools/template-workshop/commit/6af92b8c07a5a77dcfa2393368659ffb5676044d))
- Add TODO item in slides by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([411035e](https://github.com/rostools/template-workshop/commit/411035eb75caa468272dc02678aa7267527905ba))

### 📝 Documentation

- Moved releases contents into CHANGELOG by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([8dfb0a0](https://github.com/rostools/template-workshop/commit/8dfb0a0c5bbca5868e0b9e19d8601cebe144a372))
- Fix links to internal docs in README by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([669f91f](https://github.com/rostools/template-workshop/commit/669f91fd4b0ed0f557bd80f9d4c08a57960d56f1))
- Add DOI of template in Zenodo by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([be8953a](https://github.com/rostools/template-workshop/commit/be8953a584adcf28246bf512c8277c7bf9d48dbb))

### 🧪 Tests

- Don't run `just run-all` when testing by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([c6c4414](https://github.com/rostools/template-workshop/commit/c6c4414dc771bb1707398e274f51f1394c7c78b6))

### 👩‍💻 Miscellaneous

- Build contributors list in justfile, not Quarto config by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([7cc9b4d](https://github.com/rostools/template-workshop/commit/7cc9b4d6934648dc2adfff648dfa0489ac38a457))
- Removed duplicate `rostools-theme` extension by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([8f7242b](https://github.com/rostools/template-workshop/commit/8f7242b2c568cea2e44531a3ca83f4ba595d3ee2))
- Add some additional DevEx settings to `vscode` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([4a06cd7](https://github.com/rostools/template-workshop/commit/4a06cd75040870164c44000b43822483b6a86018))
- Need to copy extension to `template/` only by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([2db8981](https://github.com/rostools/template-workshop/commit/2db8981059156c6b1031e53aa4d9a94dfa67780a))
- Typed wrong repo name, should be `template-workshop` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([93223a1](https://github.com/rostools/template-workshop/commit/93223a1f6deb04c195573e88bd8437c18e9c435e))
- Regenerated README by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([3d64b96](https://github.com/rostools/template-workshop/commit/3d64b96672c87be33fd9f1fa68098d5579d7c9a8))

## [0.2.0](https://github.com/rostools/template-workshop/compare/0.1.0..0.2.0) - 2025-08-24

### ✨ Features

- Add a post-copy message and tasks by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([197195f](https://github.com/rostools/template-workshop/commit/197195ff88e0a9032ef7032fa91d2aa65bc43598))
- Add empty objectives includes file by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([abb4dce](https://github.com/rostools/template-workshop/commit/abb4dced47fcf027c6912ddd8782a9ac5664f942))
- Add author name questions by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([0d1775d](https://github.com/rostools/template-workshop/commit/0d1775dd5beedf491eb94913de45ebfad8f1850d))
- Add (empty) CODEOWNERS by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([dadad02](https://github.com/rostools/template-workshop/commit/dadad020da14be7800efe715b0367ff08b0cb47f))
- Create starting URL for workshop on copy by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([613480c](https://github.com/rostools/template-workshop/commit/613480cc99482c8dda903a119006df40459a0875))
- Output `README.qmd` to GFM Markdown version by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([21c3a41](https://github.com/rostools/template-workshop/commit/21c3a4126041bbf3c62a8370af0face6c40bc569))
- Include a survey includes file by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([3236445](https://github.com/rostools/template-workshop/commit/323644557c7d2d17c61bac4bdbda492a80431842))
- Create Jinja templated version of the landing page by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([47246b2](https://github.com/rostools/template-workshop/commit/47246b28d76f7244db9182af34ec3098c7560b44))
- Add a "is this for you" page by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([e2085da](https://github.com/rostools/template-workshop/commit/e2085dae28cb1c0558bc2ff5a06b9dc303f6a4e3))
- Add all pages to `_quarto.yml` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([0717742](https://github.com/rostools/template-workshop/commit/07177425afdf02b7e858cf0acee4ca63707ad275))

### 🐛 Fixes

- Can't have spaces between `%}` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([4e0801e](https://github.com/rostools/template-workshop/commit/4e0801ecd1b9872b868761cab73528384aa91ee9))
- Jinja else if needs to be `elif` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([a6465c1](https://github.com/rostools/template-workshop/commit/a6465c1a49e4024ac76bea95bdb8c77b453cedf3))
- Includes of file should have `_` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([14b9659](https://github.com/rostools/template-workshop/commit/14b9659c9013096025b8871ed7cf0a15b88d45c8))
- Need to escape Quarto shortcodes if in Jinja file by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([bf7611f](https://github.com/rostools/template-workshop/commit/bf7611fa4e8a47fb02986fe5b409d5d9d102597b))
- Quarto `{#` need to be escaped in Jinja by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([31e471c](https://github.com/rostools/template-workshop/commit/31e471c08a8f187914c245a8858889fbce0339e4))
- Jinja strip empty lines needs a specific format by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([c3f9e0c](https://github.com/rostools/template-workshop/commit/c3f9e0cfc2b4703be8cb224e6a4e876173a75662))
- Include shortcode should always use root `/` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([0e463eb](https://github.com/rostools/template-workshop/commit/0e463eb8b81204f01776def2d4208a6aef391513))
- Actually have to insert `_metadata.yml` file in `_quarto.yml` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([79442ab](https://github.com/rostools/template-workshop/commit/79442aba559a3ba328707d3ac7c37b0c5efc3cde))

### ♻️ Refactor

- Session isn't always an R workshop, don't need code chunk by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([d7999f2](https://github.com/rostools/template-workshop/commit/d7999f2df96458ab6ef13f01653ce38111a468a7))
- Match syllabus structure to that done in GitHub Intro by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([69c0bf2](https://github.com/rostools/template-workshop/commit/69c0bf219ea73d8bc9a092b8cf8391b04d4035fe))
- Moved version information for installing into `_metadata.yml` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([1be5334](https://github.com/rostools/template-workshop/commit/1be533491140aeacf39e58b28714190f129913ab))
- Set Zenodo upload type to `lesson` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([6f626c4](https://github.com/rostools/template-workshop/commit/6f626c46f5c07f768969cf11c5a35040e70e7c71))
- Use lowercase for workshop type naming by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([59d5e03](https://github.com/rostools/template-workshop/commit/59d5e0360f7e3c06b3b45045581635370bc16f31))
- Switch to using `github_user` and `github_repo` for project naming by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([5721de3](https://github.com/rostools/template-workshop/commit/5721de3a1959e0ab9a59df3233ff25f3786d247f))
- Don't need the update from template workflow by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([ff76529](https://github.com/rostools/template-workshop/commit/ff76529b82f77198de773068a227377566e39c62))
- Fix link to instructor guide by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([e188e8f](https://github.com/rostools/template-workshop/commit/e188e8f605f7962b69ed8884d67a14b443eee758))
- Switch to using bash in `check-commits` justfile by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([e14385d](https://github.com/rostools/template-workshop/commit/e14385d15e6917cf620d9c96aea0fb850ce816d5))
- Check that board number is a number by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([9a3ed3e](https://github.com/rostools/template-workshop/commit/9a3ed3ea93203e4e5f00eb958380b0609bf58b59))
- Remove duplicate text in survey page by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([ef71a72](https://github.com/rostools/template-workshop/commit/ef71a725b5fe2a7e78034cccc574e2a06715e269))
- Stylistic and editing changes to installing R packages page by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([56bb3f1](https://github.com/rostools/template-workshop/commit/56bb3f11537570c9adde4aea44f7243b52670178))
- Prefix includes with `_` by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([fe65084](https://github.com/rostools/template-workshop/commit/fe650845e5632a63b7b11816f7fd3f754a561bf1))
- Rename to `_star-us.qmd`, not "follow" by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([904b215](https://github.com/rostools/template-workshop/commit/904b215feb32f2a7c6fdf232edc8e6fa5f9869d7))
- Include snippets of all possible sections in session by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([be41def](https://github.com/rostools/template-workshop/commit/be41defa9d9b519c1f55649a746991aaced05368))
- Make intro slides a bit more generic by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([466f1ea](https://github.com/rostools/template-workshop/commit/466f1ead67f8f9f701ca2412d0c1a958427d854e))
- Clean up leftover `vscode` setting files by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([b9c0fe0](https://github.com/rostools/template-workshop/commit/b9c0fe065a6e7b8ebc9ee3b20f7b39d57d3c1fb7))
- Includes need to be prefixed with `_` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([136e695](https://github.com/rostools/template-workshop/commit/136e695bb7d2f8cca0100c5e2d166077f864d3c3))
- Don't update template in `run-all` of justfile by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([17d5089](https://github.com/rostools/template-workshop/commit/17d5089f90019a309f5aa3217377602a1739a240))

### 📝 Documentation

- Add auto-generated `contributors.qmd` file by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([e856105](https://github.com/rostools/template-workshop/commit/e856105bbbc85a2a654e22823174c38118344137))
- Use `svg` images for badges by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([b41f297](https://github.com/rostools/template-workshop/commit/b41f29761e83e0127f65d110d915a27d531e1c8b))
- Hide contributors for now, only me currently by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([ef9d267](https://github.com/rostools/template-workshop/commit/ef9d267463c19ab574270cbbb584f83b58b91c6f))
- Use `svg` version of badges in README by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([623e38d](https://github.com/rostools/template-workshop/commit/623e38d6114b815b875d0e789de03a7b134f31fc))

### 🧪 Tests

- Update tests to match change in `copier.yaml` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([65a4718](https://github.com/rostools/template-workshop/commit/65a4718e5cb2b17d0efd4fa939faad4259cda610))
- Initial copy by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([ad03399](https://github.com/rostools/template-workshop/commit/ad033994811bcac30f4fa0b9a0a62ed6e0fb066a))
- Preparing to recopy from the template by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([e63f5bb](https://github.com/rostools/template-workshop/commit/e63f5bb147c66b53ef6926f2b1950bc5669641ed))
- Preparing to copy onto an existing package by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([f0dbc4d](https://github.com/rostools/template-workshop/commit/f0dbc4d65cae4ec5c03dc9c0a2875113c1929f2e))
- Fix issues with testing in justfile, move to own file by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([7033264](https://github.com/rostools/template-workshop/commit/703326498892eeda65a40bc0d2e6788551835b48))

### 👷 CI/CD

- Don't need the env in the test workflow by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([1b42eb3](https://github.com/rostools/template-workshop/commit/1b42eb3fb11f212338e853c36a2ae83f5084903f))
- Need to set Git user for test workflow to run by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([c130b5b](https://github.com/rostools/template-workshop/commit/c130b5bbdaffef444a929bfb5cd23578108d337a))
- Install Quarto in test workflow by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([5f46db1](https://github.com/rostools/template-workshop/commit/5f46db1bca3b221b27f90451de5bf40d32ef9199))

### 👩‍💻 Miscellaneous

- Add `CODEOWNERS`, with me and Signe by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([cfb3c70](https://github.com/rostools/template-workshop/commit/cfb3c7014a1d1224cdc74c8f7e43e304c4213af8))
- Cleaned up the `.vscode` files a bit by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([9ee315d](https://github.com/rostools/template-workshop/commit/9ee315d1ec695f2cea9fd0f2fd103cfba19acd00))
- Seemed to have deleted it, brought back by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([ba2067a](https://github.com/rostools/template-workshop/commit/ba2067a88193d1c2b0f9312393f9579a5f99d875))

### ❤️ New contributors

- `@github-actions[bot]` started making automated contributions

## 0.1.0 - 2025-08-24

### ✨ Features

- Add `.zenodo.json` to the template by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([d9e0331](https://github.com/rostools/template-workshop/commit/d9e03318061d18e4b87b3ebe86b962b29e8f8984))
- Add justfile to template by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([2b82882](https://github.com/rostools/template-workshop/commit/2b82882f2c905ac3baceccedf09da9d22cda5108))
- Add includes for "follow us" block by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([ecc4238](https://github.com/rostools/template-workshop/commit/ecc423891e8f7208e00323bf8b130dcb6aab0ae2))
- Standalone page for learning design by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([3926f70](https://github.com/rostools/template-workshop/commit/3926f701f284306680adbeafd91784f2e35ec778))
- Set of default badges for template README and landing page by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([d8a5967](https://github.com/rostools/template-workshop/commit/d8a5967759c02fa625539e09b28a9d8ef4af8a28))
- Update template's README by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([0875301](https://github.com/rostools/template-workshop/commit/08753012de83f4e5e38ac9d3075a303ca7944c7b))
- Justfile recipe to build readme in template by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([d5ecc90](https://github.com/rostools/template-workshop/commit/d5ecc90e5d86a2ff9ccdd5a7d8515faf05124efb))
- Add `_metadata.yml` file to hold common text by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([bd482a4](https://github.com/rostools/template-workshop/commit/bd482a44616b1b0c8e3f74f0d6908e3b20641fc7))
- Fill out templating in `_quarto.yml` file by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([a1a241a](https://github.com/rostools/template-workshop/commit/a1a241ad7927713eed253ce8da0a885af4867bc4))
- Add initial, though empty, CHANGELOG file by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([cfab052](https://github.com/rostools/template-workshop/commit/cfab0526570d079b2fdc004a7636c34d75919305))

### 🐛 Fixes

- Should be `{{ }}`, without the % by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([2e216e3](https://github.com/rostools/template-workshop/commit/2e216e375b64783aa2cf00d39900d668717a2c27))
- Wrap `${{ }}` in `{{` to escape them by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([883e9ca](https://github.com/rostools/template-workshop/commit/883e9cac1396fa664a72bc7f07889a8728575a4c))

### ♻️ Refactor

- Use only one `.cz.toml`, but use internal 'if' statements inside by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([83edab0](https://github.com/rostools/template-workshop/commit/83edab041a0cbd41dcb81d8fee2c23888a7c1d67))
- Move code of conduct out of includes as own page by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([5c75208](https://github.com/rostools/template-workshop/commit/5c75208a81e3bfc6df50210b561b705002249041))
- Expand on template's CONTRIBUTING doc by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([185f3c1](https://github.com/rostools/template-workshop/commit/185f3c1d1854c778dbe40e9edfac56c404d75f01))
- Merge template website build workflow into one file by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([f6f65c4](https://github.com/rostools/template-workshop/commit/f6f65c4b0b7b642d402fa3a16b5e5f3b06ce5482))
- Include a starting URL for Quarto website in Netlify by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([741de3e](https://github.com/rostools/template-workshop/commit/741de3eb4589067ff09d5df7738e6586e14e7dd8))
- Remove social time from schedule by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([880e630](https://github.com/rostools/template-workshop/commit/880e63073c8ac33219fba241e3347ec0285abfe6))
- Converted includes into own pages in template by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([534ab56](https://github.com/rostools/template-workshop/commit/534ab5654083c097d57dc516b6e4d6ab386133ed))
- Simplify includes to all be in `includes/` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([fd5b296](https://github.com/rostools/template-workshop/commit/fd5b29677f1443ab7e13a4a81af09c13f00414c5))
- Include "reading-website" into overview page by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([77dbea1](https://github.com/rostools/template-workshop/commit/77dbea15731c2a957a13021645ad0db81d4e602a))
- No need for generic "installing-programs" doc by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([1b41da6](https://github.com/rostools/template-workshop/commit/1b41da68ba2c298388fd837128d59abf0b57cf43))

### 📝 Documentation

- Expand on CONTRIBUTING guide
  [#2](https://github.com/rostools/template-workshop/pull/2) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([45bb005](https://github.com/rostools/template-workshop/commit/45bb0057404ef44b77b43c6f150625c6033e7b6c))
- Update CITATION file for this template
  [#3](https://github.com/rostools/template-workshop/pull/3) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([9865946](https://github.com/rostools/template-workshop/commit/98659463939d606abb090839dc341897871f11ce))
- Match README style with Seedcase template style
  [#7](https://github.com/rostools/template-workshop/pull/7) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([621dae2](https://github.com/rostools/template-workshop/commit/621dae2db1149b07e4869c2866697b2ffe525e9d))
- Landing page of website
  [#8](https://github.com/rostools/template-workshop/pull/8) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([3b61e52](https://github.com/rostools/template-workshop/commit/3b61e52bfaa8451ef92a36797149dd285f40b034))
- Add contributor list by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([d838710](https://github.com/rostools/template-workshop/commit/d8387108246d682988b116394fb0a17ac5604da9))
- Add release page to website by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([281d123](https://github.com/rostools/template-workshop/commit/281d123d2ee1d1a24ba322e1cf0dd1e75250ad77))
- Generalise authors to "template-workshop" authors by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([947ef3d](https://github.com/rostools/template-workshop/commit/947ef3d651b4328d933519c344e587b096a08233))
- Add explanation about releasing and commit messages by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([0a701ca](https://github.com/rostools/template-workshop/commit/0a701caa92052214cdc670723361fdf23d9a0890))
- Add guide doc to website by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([2d9f6df](https://github.com/rostools/template-workshop/commit/2d9f6df9750d2f78ec084058ad8213c527c2cb5b))
- Add note about setting up Netlify by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([c72e566](https://github.com/rostools/template-workshop/commit/c72e566184efbeb8d84a25bf9ff9d07ed3ce2909))
- Correct doc comment in contributing script by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([78eefe3](https://github.com/rostools/template-workshop/commit/78eefe30b144113eca84ffa40ec295d03922b87c))
- Forgot to use correct meta shortcode by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([c0e9db3](https://github.com/rostools/template-workshop/commit/c0e9db302352ebc38db25ae9656630901fc8bd76))

### 💄 Styling

- Add rostools-theme Quarto extension
  [#5](https://github.com/rostools/template-workshop/pull/5) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([6eac546](https://github.com/rostools/template-workshop/commit/6eac5460cff2adbb688639e87bfc05942327e9ce))

### 👷 CI/CD

- Generalise test workflow by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([3ffd2cc](https://github.com/rostools/template-workshop/commit/3ffd2ccdfc8c1e65640257583999817cef93ac64))

### 👩‍💻 Miscellaneous

- Start template repo by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([c5123e4](https://github.com/rostools/template-workshop/commit/c5123e4f981de7b89b515cca4563658ef6858cad))
- Improve some DevEx settings
  [#4](https://github.com/rostools/template-workshop/pull/4) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([f0d089b](https://github.com/rostools/template-workshop/commit/f0d089b9a9d5a8be7db0ee5fcd1013be6967c11b))
- Do not skip workflows on version bump
  [#6](https://github.com/rostools/template-workshop/pull/6) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([172e4f1](https://github.com/rostools/template-workshop/commit/172e4f1f70f859061c1c01d820b3ace75749fe55))
- Add all Quarto config and build files
  [#9](https://github.com/rostools/template-workshop/pull/9) by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([18aac29](https://github.com/rostools/template-workshop/commit/18aac29b27c4a1796aa70915894360d6e91cdacb))
- Move metadata into `_metadata.yml` by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([d7651d2](https://github.com/rostools/template-workshop/commit/d7651d2f72fc6ca04dd1276407cb6c7eee97e643))
- Don't need by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([0f87822](https://github.com/rostools/template-workshop/commit/0f878222fe336328f6eb26755b4c770290a80289))
- Fully update the justfile to match changes in Seedcase by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([7b13a0b](https://github.com/rostools/template-workshop/commit/7b13a0bd25f7188f8bcb129f878ec983fd513edb))
- Copy over extension to template by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([150fe10](https://github.com/rostools/template-workshop/commit/150fe10ffd4a133d62c4b3690b1857c22a36dd74))
- Rename to use lowercase r by [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([3bd2f81](https://github.com/rostools/template-workshop/commit/3bd2f812f04e956c094b7af34d7798a6c5a3b4fc))
- Correct the goat counter website URL by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([ebcdaa5](https://github.com/rostools/template-workshop/commit/ebcdaa54b499a455c3268c782fd4d93e9b31eaae))
- Add guide and releases to sidebar in website by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([6211cd1](https://github.com/rostools/template-workshop/commit/6211cd1cb271f78676269f56a5e2b4b6b84fcbb0))
- Use bash, not zsh in justfile by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([5b0d8a4](https://github.com/rostools/template-workshop/commit/5b0d8a4c70ce7454d9d4f92ce4d2ac17b597cce8))
- Don't copy over build website workflow by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([e411c9d](https://github.com/rostools/template-workshop/commit/e411c9dfdc925cd2f41e45d36b9d7be5475f8af2))
- Don't need to run contributor script from justfile by
  [`@lwjohnst86`](https://github.com/lwjohnst86)
  ([15ee0c1](https://github.com/rostools/template-workshop/commit/15ee0c1b0a52a1b46cecaf5482d7636972630b86))

### ❤️ New contributors

- `@pre-commit-ci[bot]` started making automated contributions

- [`@lwjohnst86`](https://github.com/lwjohnst86) made their first contribution

- `@dependabot[bot]` started making automated contributions
