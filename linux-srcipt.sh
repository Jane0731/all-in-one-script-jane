#!/usr/bin/env bash

# Text Color Variables
GREEN='\033[32m'  # Green
YELLOW='\033[33m' # YELLOW
CLEAR='\033[0m'   # Clear color and formatting

# Setup script for setting up a new linuxos machine
echo -e "${GREEN}Starting Install !${CLEAR}"

install-dev-tools() {

    ## Homebrew
    echo -e "${YELLOW}Install Homebrew${CLEAR}"
    CI=1
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew update
    ## NVM
    echo -e "${YELLOW}Install NVM${CLEAR}"
    brew install nvm
    ## Node
    echo -e "${YELLOW}Install Node${CLEAR}"
    nvm install node
    ## git
    echo -e "${YELLOW}Install GIT${CLEAR}"
    brew install git
    git config --global user.email "jane991680420@outlook.com"
    git config --global user.name "jane0731"
    ## php
    echo -e "${YELLOW}Install php${CLEAR}"
    brew install php
    ## MQTTX
    echo -e "${YELLOW}Install MQTTX${CLEAR}"
    brew install --cask mqttx
    ## VirtualBox
    echo -e "${YELLOW}Install Virtual Box ${CLEAR}"
    brew install --cask virtualbox
    ## ngrok
    echo -e "${YELLOW}Install ngrok${CLEAR}"
    brew install --cask ngrok
}

install-basic-tools() {
    ## Google Drive
    echo -e "${YELLOW}Install Google Chrome${CLEAR}"
    brew install --cask google-drive
}
install-all() {
    echo -e "${GREEN}Starting Install dev-tools !${CLEAR}"
    install-dev-tools

    echo -e "${GREEN}Starting Install basic-tools !${CLEAR}"
    install-basic-tools
}

install-all
