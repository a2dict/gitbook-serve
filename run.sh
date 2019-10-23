#!/bin/bash

# author: a2dict
# date: 2019-10-23 10:33:30

# copy mdbook to workspace
cp -rf /mdbook/* /work/
chmod -R 755 /work/
npm i
exec gitbook serve --port 8080 --no-watch --no-open