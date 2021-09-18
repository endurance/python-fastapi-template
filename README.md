<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
-->
[![LinkedIn][linkedin-shield]][linkedin-url]
[![MIT License][license-shield]][license-url]

<!-- PROJECT LOGO -->
<br />
<p align="center">

  <h3 align="center">KUNGFU.AI Project Template</h3>

  <p align="center">
    Your awesome ML project!
    <br />
    <a href=""><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="">View Demo</a>
    ·
    <a href="">Report Bug</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
* [Usage](#usage)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [License](#license)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)



<!-- ABOUT THE PROJECT -->
## About The Project

<!-- [![Product Name Screen Shot][product-screenshot]](https://example.com) -->


### Built With
This section should list any major frameworks that you built your project using. Leave any add-ons/plugins for the acknowledgements section. Here are a few examples.
* [Python 3.8](https://www.python.org)
* [Docker](https://www.docker.com)


<!-- GETTING STARTED -->

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for
development and testing purposes.

Docker is used to ensure consistency across development, test, training, and production
environments. The Docker image is fully self-contained, so all required frameworks and libraries
will be installed as part of the image creation process.

### Install Requirements

Before proceeding, please install the following prerequisites:

- Install [Git](https://git-scm.com)
- Install [Docker](https://www.docker.com) version 18.0 or later
- Install [pre-commit](https://pre-commit.com)
- Install [DVC](https://dvc.org/)

#### Easy install for MacOS
```shell script
brew install git docker pre-commit dvc
```
---
### Repo Setup

1. Install the python task runner libraries
   ```shell
   pip install poetry taskipy
   ```
2. Run `task build` to build the project's Docker image.
   ```shell
   task build
   ```
3. Set up data version control remote (see next section)

#### Data Version Control (DVC) Setup

DVC is a tool used to enable data version control (analogous to source control), even with large artifacts.
However, a remote bucket is required to store these artifacts and changes. To add a new remote (only need
to do this once), establish credentials (e.g. with `aws configure` if using the AWS CLI), and then:

```sh
dvc remote add -d storage s3://your-bucket-name/dvc-storage
```

Then, simply use DVC as you would git (e.g. `dvc add data/your_data_directory` and follow steps
printed on the terminal to track). A full primer is outside the scope of this README, however,
check out DVC's [Quick Start](https://dvc.org/doc/start/data-versioning) for more info.

#### Unit Tests

Once the Docker image is built we can run the project's unit tests to verify everything is
working. The `task test` script will start a Docker container and execute all unit tests using
the [pytest framework](https://docs.pytest.org/en/latest/).

```sh
task test
```

You can see a complete list of test configuration options using `task test --help`.

#### Interactive Shell

The `task shell` script starts a Docker container in interactive mode and drops you into a bash
prompt. This can be useful when using an interactive debugger to step through code.

```sh
task shell
```

### Training

Run the training script to train a new model from scratch.

```sh
task train
```

### Prediction

Run the prediction script to run a trained model on a dataset.

```sh
task predict
```

<!-- USAGE EXAMPLES -->
## Usage

In Progress


<!-- ROADMAP -->
## Roadmap

In progress

<!-- CONTRIBUTING -->
## Contributing

Any contributions you make are **greatly appreciated**.

1. Create your Feature Branch (`git checkout -b <your name>/<your feature name>`)
2. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
3. Push to the Branch (`git push origin feature/AmazingFeature`)
4. Open a Pull Request


<!-- LICENSE -->
## License

Distributed with NO License.



<!-- CONTACT -->
## Contact

[KUNGFU.AI](https://www.kungfu.ai)

## Useful Links

[GPU Support in Docker Containers](https://towardsdatascience.com/how-to-properly-use-the-gpu-within-a-docker-container-4c699c78c6d1)

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

<< REPLACE ME >>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=flat-square
[license-url]: https://github.com/kungfuai/project-template/blob/master/LICENSE
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/company/kungfuai/
[product-screenshot]: images/screenshot.png
