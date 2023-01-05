#!/bin/bash

root_dir=$(pwd)

eval $(ssh-agent)
ssh-add ~/.ssh/id_rsa

./clone-repositories.sh ../../lists/services-list.json develop ../../services
