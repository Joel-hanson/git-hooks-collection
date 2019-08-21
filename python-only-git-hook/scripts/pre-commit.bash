#!/usr/bin/env bash

echo "Running pre-commit hook"
./scripts/run-tests.bash

# $? stores exit value of the last command
if [ $? -ne 0 ]; then
    echo ""
    echo ""
    echo "............................"
    echo ""
    echo "Tests must be passed before you commit!"
    echo ""
    echo "............................"
    echo ""
    exit 1
fi
