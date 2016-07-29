#!/bin/bash

# determine current directory of script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# use rsync to push current directory to SSH alias
rsync -av --exclude=".*" $DIR/ pdx:~/public_html 
