# kustomize-docker

## Overview

This container provides [kustomize](https://github.com/kubernetes-sigs/kustomize).  

## Build

``` text
make
```

## Docker image tags and respective Dockerfile links
- `1.0`, `latest`: [master/Dockerfile](https://github.com/sh-miyoshi/istioctl/blob/master/Dockerfile)

## Run

``` text
docker run --rm -it smiyoshi/kustomize:1.0 kustomize --help
```

## Author

Shunsuke Miyoshi
