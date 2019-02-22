ssh-keyscan -H github.com >> ~/.ssh/known_hosts
cp /vagrant/team/id_rsa ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa
sudo apt-get install python3-pip build-essential libffi-dev python-dev /vagrant/team/libsodium18_1.0.11-2_amd64.deb -y
pip3 install bcrypt
pip3 install pysodium