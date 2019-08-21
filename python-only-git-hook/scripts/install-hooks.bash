#!/usr/bin/env bash

GIT_DIR=$(git rev-parse --git-dir)

echo "Installing hooks..."
# this command creates symlink to our pre-commit script
ln -s ../../scripts/pre-commit.bash $GIT_DIR/hooks/pre-commit
echo "Installing dependencies..."
echo "python dependencies"
pip install -r requirements.txt
echo "js dependencies"
sudo npm install eslint -g
echo "Done!"
