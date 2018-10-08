#!/bin/bash
echo "enter repo name"
read var
echo "repo name:" $var
git clone $var
git log -1 | grep Author
git log -1 | grep Date