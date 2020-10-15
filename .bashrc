#!/bin/bash

DOTFILES=$HOME/dotfiles/shell

for file in `find $DOTFILES`
do
#  echo $file
  if [ -f $file ]; then
  source $file
  fi
done


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash ] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.bash
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[ -f /Users/i862087/golang/src/github.concur.com/delivery-pipeline/gh-app-delivery-pipeline/node_modules/tabtab/.completions/slss.bash ] && . /Users/i862087/golang/src/github.concur.com/delivery-pipeline/gh-app-delivery-pipeline/node_modules/tabtab/.completions/slss.bash