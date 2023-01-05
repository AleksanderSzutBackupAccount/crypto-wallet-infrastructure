#!/bin/bash

for SCRIPT in ./init/*
  do
  if [ -f $SCRIPT -a -x $SCRIPT ]
  then
    $SCRIPT
  fi
done