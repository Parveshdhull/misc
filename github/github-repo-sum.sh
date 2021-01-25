#!/bin/bash

if [[ $# -lt 3 ]]
then
	echo "Usage: program [users|orgs] [username|orgname] page"
else
	CNTX=$1
	NAME=$2
	PAGE=$3
	curl "https://api.github.com/$CNTX/$NAME/repos?page=$PAGE&per_page=100"| grep -e 'git_url*' | cut -d / -f 5 | cut -d . -f 1 | xargs -L1 -i curl https://api.github.com/repos/$NAME/{} 2> /dev/null | grep size | tr -dc '[:digit:]\n' | paste -sd+ - | bc
fi
