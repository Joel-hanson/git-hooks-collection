set -e

# magic line to ensure that we're always inside the root of our application,
# no matter from which directory we'll run script
# thanks to it we can just enter `./scripts/run-tests.bash`
cd "${0%/*}/.."

# let's fake failing test for now 
echo ""
echo ".......Running tests........"
echo ""
echo "............................"
echo ""
echo " ̿̿ ̿̿ ̿̿ ̿'̿'\̵͇̿̿\з= ( ▀ ͜͞ʖ▀) =ε/̵͇̿̿/’̿’̿ ̿ ̿̿ ̿̿ ̿̿"
echo ""
echo "............................"
echo ""


# flake8 test
printf "\nValidating python:\n"
git diff --cached --name-only | grep -E '\.(py)$' | xargs flake8 --ignore E501,W605,W504 
printf "\nPython validation completed!\n"

echo ""
echo "............................"
echo "#### ✌️ Test passed bro ####"
echo "............................"
echo ""
