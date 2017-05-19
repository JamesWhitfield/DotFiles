# Setup the dotfile location dir
if [ -d "$HOME/DotFiles" ]; then
	DOTFILES_DIR="$HOME/DotFiles"
	echo "Found dot files dir"
else
	echo "Unable to find dotfiles, existing"
	return
fi

# Run dotfiles in folder
for DOTFILE in "$DOTFILES_DIR"/system/.{alias,env,function,path,prompt};
do
	echo "Found config file $DOTFILE"
	# [ -f "$DOTFILE" ] && source "$DOTFILE"
done
