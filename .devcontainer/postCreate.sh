#!/bin/bash

# Configure this to fit your username and email
# git config --global user.name "User Name"
# git config --global user.email "user@email"

# This sets the git editor to the VS Code editor
git config --global core.editor "code --wait"

# this part depends, whether you would like to have .devcontainer as a part of your workflow
# with devcontaienr in the repo, you can enable others to use the same tooling and settings
# which simplifies the onboarding process
# echo ".devcontainer" >> ~/.gitignore_global
#git config --global core.excludesfile ~/.gitignore_global

pipx install poetry

# Although the code is running in a container
# using a virtual environment helps to simly restart the workflow without
# the need to rebuild the container
# If the code is deployed as venv in prod this helps to keep the dev and prod environment aligned
poetry config virtualenvs.create true
poetry config virtualenvs.in-project true

poetry completions bash >> ~/.bash_completion
