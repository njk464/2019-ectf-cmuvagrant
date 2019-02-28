if [ -d $2 ]; then
	echo "The git repo already exists in the guest machine. If you are reprovisioning, do a git pull from within the VM or remove the directory and try again."
	exit
fi

ssh-keyscan -H github.com >> ~/.ssh/known_hosts
cp /vagrant/team/id_rsa ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa
rm -rf ~/MES/ && mkdir ~/MES && git clone $1 $2