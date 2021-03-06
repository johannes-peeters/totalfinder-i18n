#!/bin/bash
echo "Committing last changes..."
echo "Note you maybe have to manually add new files you changed ('git add mynewfile.ext')"

#ask for a message
read -p "Write a commit message to identify this commit and its changes and press ENTER: "
git commit -m "$REPLY"

read -p "Succesfully commited! Do you want to push? [y/n] " -n 1
echo ""
if [[ $REPLY =~ ^[Yy]$ ]]; then
	git push
	echo "Pushed!"
fi
