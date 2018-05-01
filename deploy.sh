#!/usr/bin/bash

git remote add deploy avanish@$IP:$DEPLOY_DIR
expect << EOF
  spawn git push deploy master
  expect "Are you sure you want to continue connecting (yes/no)? "
  send "yes"
EOF

# # eval "$(ssh-agent -s)" # Start ssh-agent cache
# # chmod 600 .travis/id_rsa # Allow read access to the private key
# # ssh-add .travis/id_rsa # Add the private key to SSH

# # git config --global push.default matching
# # git remote add deploy ssh://git@$IP:$PORT$DEPLOY_DIR
# # git push deploy master

# # Skip this command if you don't need to execute any additional commands after deploying.
# ssh pixie <<EOF
#   cd $DEPLOY_DIR
# EOF