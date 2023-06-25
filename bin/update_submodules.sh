#!/usr/bin/env bash

# initialize submodules recursively
git submodule update --init --force --recursive

# update haven
cd ./external/haven
git checkout master
git pull --ff-only origin master
cd ../../