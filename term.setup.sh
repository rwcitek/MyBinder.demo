#!/bin/bash

[ "${HISTFILE}" ] || { echo -e "Use 'source' instead ... \nsource $0" ; exit ; }

# Configure history
{ cat <<'EOF' > "${HISTFILE}"
./data.science.sh 
docker container list -a
docker container stop jupyter
docker image list -a
{ alias cls=clear ; alias dir='ls -la' ; alias h=history ; alias more='less -iX' ; }
h > $HISTFILE
history -r
history -a
EOF
}

history -r


