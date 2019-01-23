<p align="center"><img src="assets/logos/128x128.png">
 <h1 align="center">RenoirSt</h1>
  <p align="center">
    A DSL enabling programmatic cascading style sheet generation for Pharo Smalltalk
    <br>
    <a href="docs/"><strong>Explore the docs »</strong></a>
    <br>
    <br>
    <a href="https://github.com/ba-st/RenoirSt/issues/new?labels=Type%3A+Defect">Report a defect</a>
    |
    <a href="https://github.com/ba-st/RenoirSt/issues/new?labels=Type%3A+Feature">Request feature</a>
  </p>
</p>

![GitHub release](https://img.shields.io/github/release/ba-st/RenoirSt.svg)
[![Build Status](https://travis-ci.org/ba-st/RenoirSt.svg?branch=release-candidate)](https://travis-ci.org/ba-st/RenoirSt)
[![Coverage Status](https://coveralls.io/repos/github/ba-st/RenoirSt/badge.svg?branch=release-candidate)](https://coveralls.io/github/ba-st/RenoirSt?branch=release-candidate)

## Goals
- Improve CSS integration with existing Web Frameworks
- Write & refactor in Smalltalk, deploy to CSS

### Benefits:
- Keep in sync your code changes with the changes in the CSS
- Use your favorite browsing and refactoring tools inside the same Pharo image to handle CSS  

## License
- The code is licensed under [MIT](LICENSE).
- The documentation is licensed under [CC BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/).

## Quick Start

- Download the latest [Pharo 32](https://get.pharo.org/) or [64 bits VM](https://get.pharo.org/64/).
- Download a ready to use image from the [release page](https://github.com/ba-st/RenoirSt/releases/latest)
- Explore the [documentation](docs/)

***********************************************

Now you can try the Hello World:

```smalltalk
CascadingStyleSheetBuilder new
	declareRuleSetFor: [:selector | selector body before]
	with: [:style | style content: '"Hello World"'];
	build
```

you should see something like this:
```css
body::before
{
	content: "Hello World";
}
```

## Installation

To load the project in a Pharo image, or declare it as a dependency of your own project follow this [instructions](docs/Installation.md).

## Contributing

Check the [Contribution Guidelines](CONTRIBUTING.md)
