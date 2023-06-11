#!/bin/bash

set -xe

export TF_VERSION=$TF_VERSION

tfenv install $TF_VERSION
tf use $TF_VERSION

bash -c "$*"
