#!/bin/bash

echo Installation Script is running!

function test(){
	echo testing function calls
}


function installingVim(){ #VIM already installed in VM box
	#sudo apt-get update
	#sudo apt-get install vim
	#sudo apt-get install git
	
	#echo VIM installed

	# Make directories
	#mkdir "$HOME"/.vim
	#mkdir "$HOME"/.vim/bundle
	#mkdir "$HOME"/.vim/colors
	
	
	# Get color scheme
	wget https://gist.githubusercontent.com/thejmazz/3b3495e85478fa16b3de/raw/2ba36babd9060c0221a8b8bddba7af7ea05c6e0c/hybridbrackets.vim
	mv hybridbrackets.vim "$HOME"/.vim/colors
	
	echo VIM color scheme downloaded 


}

function installCompilerGCC(){
    sudo apt update
    sudo apt install build-essential
    sudo apt-get install manpages-dev
    gcc --version
}

function installVSCODE(){
	sudo apt install ./<file>.deb
		
	echo VS Code installed


	#another way to install VS Code

	
	#wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
	#sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
	#sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main">/etc/apt/sources.list.d/vscode.list'
	#rm -f packages.microsoft.gpg
	#sudo apt install apt-transport-https
	#sudo apt update
	#sudo apt install code # or code-insiders

	

	#to make VS Code default editor
	#sudo update-alternatives --set editor /usr/bin/code
	
	#echo VS Code set as default editor


}

function installWordPress(){
	wget https://wordpress.org/latest.tar.gz
	tar -xzvf latest.tar.gz #extract
	#(do we need to do database connections??)
}


function installDocEditor(){ 
    sudo snap install wps-office  
    sudo snap connect wps-office:removable-media

}

function installPDFViewer(){ #okular 
    sudo apt update
    sudo apt install okular
}

function installSpotifyDesktop(){
    sudo snap install curl
    curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
    echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

    sudo apt-get update
    sudo apt-get install spotify-client
}

#call all the functions here

#test
 installingVim
 installCompilerGCC
 installVSCODE
 installWordPress
 installDocEditor
 installPDFViewer
 installSpotifyDesktop
 

echo Installations complete!
