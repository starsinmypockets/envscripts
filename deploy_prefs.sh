#! /bin/bash
if [[ $# -eq 0 ]] ; then
    echo "USAGE: ./deploy_prefs.sh user@servername.com"
    exit 1
fi

SERVER_NAME=$1
echo "Make sure to manually install ssh keys on remote server and test root login via ssh."
echo "Uploading dot files"
rsync -avh .vim* $SERVER_NAME:~
rsync -avh .zsh* $SERVER_NAME:~
echo "Uploading setup scripts"
rsync -avh remote_shell_setup.sh nvm_install.sh $SERVER_NAME:~

