# powsimr-docker

## Overview
This repository contains Dockerfiles for Docker containers of powsimR. [PowsimR](https://github.com/bvieth/powsimR) is a power analysis tool for bulk and single cell RNA-seq experiments. Additional information about PowsimR can be found on the [PowsimR](https://github.com/bvieth/powsimR) page.

## Usage
```
docker pull dritoshi/powsimr
docker run -i -t dritoshi/powsimr /bin/bash
```

## Build
```
git clone https://github.com/dritoshi/powsimr-docker.git
cd powsimr-docker
docker build --rm -t <name>:<tag> .
```
