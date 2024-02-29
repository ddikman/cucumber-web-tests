set -ex
CHROME_DRIVER_VERSION=$(wget -qO- chromedriver.storage.googleapis.com/LATEST_RELEASE);
wget http://chromedriver.storage.googleapis.com/$CHROME_DRIVER_VERSION/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
chmod +x chromedriver
mkdir -p $HOME/.composer/vendor/bin
mv -f chromedriver $HOME/.composer/vendor/bin/
rm chromedriver_linux64.zip