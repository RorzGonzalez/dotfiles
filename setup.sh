#!/bin/sh

echo "Setting up your dotfile symlinks..."

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

rm -rf $HOME/.bash_profile
ln -s $HOME/.dotfiles/.bash_profile $HOME/.bash_profile

rm -rf $HOME/.eslintignore
ln -s $HOME/.dotfiles/.eslintignore $HOME/.eslintignore

rm -rf $HOME/.eslintrc.js
ln -s $HOME/.dotfiles/.eslintrc.js $HOME/.eslintrc.js

rm -rf $HOME/.gitconfig
ln -s $HOME/.dotfiles/.gitconfig $HOME/.gitconfig

rm -rf $HOME/.mackup.cfg
ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg

rm -rf $HOME/.php-cs-fixer.php
ln -s $HOME/.dotfiles/.php-cs-fixer.php $HOME/.php-cs-fixer.php

rm -rf $HOME/.prettierrc
ln -s $HOME/.dotfiles/.prettierrc $HOME/.prettierrc

rm -rf $HOME/.profile
ln -s $HOME/.dotfiles/.profile $HOME/.profile

rm -rf $HOME/.wget-hsts
ln -s $HOME/.dotfiles/.wget-hsts $HOME/.wget-hsts

rm -rf $HOME/.yarnrc
ln -s $HOME/.dotfiles/.yarnrc $HOME/.yarnrc

rm -rf $HOME/.composer/composer.json
ln -s $HOME/.dotfiles/composer.json $HOME/.composer/composer.json

rm -rf $HOME/package.json
ln -s $HOME/.dotfiles/package.json $HOME/package.json

rm -rf $HOME/.wp-cli
ln -s $HOME/.dotfiles/.wp-cli $HOME/.wp-cli

rm -rf $HOME/.mackup
ln -s $HOME/.dotfiles/.mackup $HOME/.mackup
