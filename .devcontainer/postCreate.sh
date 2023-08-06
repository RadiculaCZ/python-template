#!/bin/bash

git config --global user.name "User Name"
git config --global user.email "user@email"
git config --global core.editor "code --wait"

echo ".devcontainer" >> ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

pipx install poetry

poetry config virtualenvs.create false
poetry completions bash >> ~/.bash_completion
