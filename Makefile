brew:
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

nvm:
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.4/install.sh | bash
	nvm use latest

git:
	brew install git

vim:
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	cp dotfiles/.vimrc ~/.vimrc

zsh:
	cp dotfiles/.zshrc ~/.zshrc

