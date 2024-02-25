#!/bin/bash

# Configure history
{ cat <<'EOF'
./data.science.sh 
docker container list -a
docker container stop jupyter
docker image list -a
{ alias cls=clear ; alias dir='ls -la' ; alias h=history ; alias more='less -iX' ; }
h > $HISTFILE
history -r
history -a
EOF
} > $HISTFILE
history -r


