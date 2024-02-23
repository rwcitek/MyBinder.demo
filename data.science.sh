#!/bin/bash

docker container run \
  --rm \
  --detach \
  --volume ${PWD}:/data/ \
  --workdir /data/ \
  --publish 127.0.0.1:8888:8888 \
  --name jupyter \
  rwcitek/jupyter.light \
    jupyter lab --allow-root --ip=0 --NotebookApp.token='' 

sleep 1



# apt-get install -y wamerican-insane file bsdmainutils curl


docker container exec jupyter bash Initial.Data.Analysis/bash.setup.sh >& /dev/null

echo -e "\n\n\n       http://127.0.0.1:8888/lab \n\n\n"

