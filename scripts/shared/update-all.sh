#!/bin/bash

services_list=`jq '.[].url' ./lists/services-list.json`

git pull

for service in ${services_list[@]}; do
  IFS="/"
  array=($service)
  IFS="."
  array2=(${array[2]})

  cd "services/${array2}"
  git pull
  cd ../..
done