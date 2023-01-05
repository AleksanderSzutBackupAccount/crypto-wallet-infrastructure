#!/bin/bash

root_dir=$(pwd)

repositories=`jq '.[].url' $1`

cd /tmp
rm -rf services
mkdir services
cd services


for repo in ${repositories[@]}; do
  ssh-agent bash -c "ssh-add ~/.ssh/id_rsa; git clone -b $2 $repo"
done

cd $root_dir
mv /tmp/services/* $3