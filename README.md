# Typst Talk template

[![Title Slide](https://github.com/BonhamLab/template_presentation/releases/latest/download/title-slide.png)](https://github.com/BonhamLab/template_presentation/releases/latest/download/presentation.pdf)

Write, deploy, and publish a typst presentation

## Usage

- Clone this repo [as a template](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template)
- Instantiate the assets/general submodule `git submodule --init --recursive`
- \[Optional\] Add additional project submodules
  - eg `git submodule add git@github.com:BonhamLab/assets_binfantis.git assets/binfantis`
- update the title slide link in the README above
- Get to work!

## Deployment

To trigger the github action, create a release.

If you change the name of `main.typ`,
be sure to update the action.
