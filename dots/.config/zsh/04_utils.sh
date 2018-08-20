
if [[ -f $NVM_DIR/nvm.sh && ! `type nvm` ]]; then
	source $NVM_DIR/nvm.sh
fi

if [[ -f $RVM_DIR/scripts/rvm && ! `type rvm` ]]; then
	source $RVM_DIR/scripts/rvm
fi
