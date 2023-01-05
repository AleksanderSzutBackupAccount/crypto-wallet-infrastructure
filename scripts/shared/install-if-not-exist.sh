#!/bin/bash

if ! [ -x "$(command -v $1)" ]; then
  sudo apt-get update
  sudo apt-get install $1
fi