#!/bin/bash
echo -e '#!/bin/bash\n' > import.sh

echo -e '########### Brew Install List ###########' >> import.sh
brew leaves | sed 's/^/brew install /' >> import.sh &&

echo -e '\n########### Brew Cask Install List ###########' >> import.sh &&
brew cask list | sed 's/^/brew cask install /' >> import.sh &&

echo -e '\n########### Mac App Store Install List ###########' >> list.sh &&
mas list | sed 's/\ /\ \ #\ /' | sed 's/^/mas install /' >> import.sh

echo -e '\necho "And done..."' >> import.sh

echo "And done..."
