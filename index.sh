#!/bin/bash

exit 0

echo 'index'
while [ 1 ]; do
echo 'index'
curl --request POST \
     --form "branch=main" \
     --form "commit_message=update" \
     --form "actions[][action]=update" \
     --form "actions[][file_path]=index.html" \
     --form "actions[][content]= <h1> $(date -u)" \
     --header "PRIVATE-TOKEN: $1" \
     "https://gitlab.com/api/v4/projects/$2/repository/commits"
echo "Tidur 10 Menit"
sleep 600
echo 'index'
done
echo 'index'
