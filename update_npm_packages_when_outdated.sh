#!/bin/bash

npm outdated | awk '{if (NR>1) print $1 "@" $4}' | while read package; do
  npm install "$package"
done
