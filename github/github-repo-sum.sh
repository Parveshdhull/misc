#!/bin/bash

# Set variables
CNTX={users|orgs}
NAME={username|orgname}
PAGE=1

# Size in KB
curl "https://api.github.com/$CNTX/$NAME/repos?page=$PAGE&per_page=100"| grep -e 'git_url*' | cut -d / -f 5 | cut -d . -f 1 | xargs -L1 -i curl https://api.github.com/repos/$NAME/{} 2> /dev/null | grep size | tr -dc '[:digit:]\n' | paste -sd+ - | bc