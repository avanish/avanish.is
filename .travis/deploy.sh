#!/usr/bin/bash

git remote add deploy ssh://abu@$IP:$DEPLOY_DIR
expect << EOF
  spawn git push deploy master
  expect "Are you sure you want to continue connecting (yes/no)? "
  send "yes\r"
  expect "password:"
  send $PASS\r
  expect eof
EOF

ssh abu@$IP <<EOF
  cd $DEPLOY_DIR
  npm install -y
  hexo generate
  hexo deploy
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