#!/bin/bash
echo '#!/bin/bash\n' > import.sh

echo '########### Brew Install List ###########' >> import.sh
brew leaves | sed 's/^/brew install /' >> import.sh &&

echo '\n########### Brew Cask Install List ###########' >> import.sh &&
brew list --cask | sed 's/^/brew cask install /' >> import.sh &&

echo '\n########### Mac App Store Install List ###########' >> import.sh &&
mas list | sed 's/\ /\ \ #\ /' | sed 's/^/mas install /' >> import.sh

echo '\necho "finished installing items of import.sh"' >> import.sh

echo "Created file 'import.sh' successfully. Run it on new machine."
