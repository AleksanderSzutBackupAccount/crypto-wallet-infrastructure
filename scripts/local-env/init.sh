#!/bin/bash

cd $HOME/tmp
eval $(ssh-agent)
ssh-add ~/.ssh/id_rsa

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

cd "$parent_path"

cd ..

repositories=`jq '.[].url' ../lists/services-list.json`

cd ../services

branch="develop"

for repo in ${repositories[@]}; do
  ssh-agent bash -c "ssh-add ~/.ssh/id_rsa; git clone -b $branch $repo"
done

