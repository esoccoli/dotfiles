# Checks every directory in the same folder as this script, and runs a git pull in each of them

#!/bin/sh
for dir in ./[^.]*/
do
  cd ${dir}
  echo "${dir}"
  git pull
  cd ..
done
