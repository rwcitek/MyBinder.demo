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

{ cat <<'eof'
pip install bash_kernel
python3 -m bash_kernel.install
eof
} | docker container exec -i jupyter bash >& /dev/null


echo -e "\n\n\n       http://127.0.0.1:8888/lab \n\n\n"


