#!/bin/bash

install_zshrc() {
	echo "Linking .zshrc..."
	ln -s .zshrc ~/.zshrc
	echo "Successfully linked!"
	read "Press any key to continue: "
}

install_brewfile() {
	if ! command -v brew &>/dev/null; then
		echo "Did not detect homebrew installation, returning back to menu"
		echo "Please install homebrew before doing this option, located here: https://brew.sh"
	else
		echo "Detected homebrew installation, installing Brewfile now..."
		brew bundle install
		echo "If homebrew failed installing for some reason, select the 'Install Brewfile' option again to try another time"
	fi
	read -p "Press any key to continue: "
}

install_nvim() {
	echo "Installing config..."
	git clone https://github.com/Jstone751/nvim ~/.config/nvim
	nvim --headless +AstroMasonUpdateAll +q
	echo "Successfully installed config!"
	read "Press any key to continue: "
}

read_option() {
	local option=$1
	if [[ "$option" == "q" || "$option" == "Q" ]]; then
		echo "Exiting..."
		exit 0
	elif [[ "$option" == "1" ]]; then
		install_zshrc
	elif [[ "$option" == "2" ]]; then
		install_brewfile
	elif [[ "$option" == "3" ]]; then
		install_nvim
	else
		echo "Invalid option. Please try again."
	fi
}

while true; do
	echo "Hello! I'm the autoinstall script for these dotfiles! Please tell me what you would like to do:"
	echo "1. Install .zshrc"
	echo "2. Install brewfile"
	echo "3. Install nvim config"
	read -p "Enter an option (q to exit): " option
	read_option "$option"
done
