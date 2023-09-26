se() {
	sudo apt install figlet toilet apktool wget curl git npm nano nodejs openjdk-8-jdk openjdk-8-jre python3 python3-pip -y
	cd files
	dpkg -i *deb
	cd ~
	mkdir .lemon
	cp ~/rootedcyber-lemon/files/lemon.zip ~/.lemon
	cd ~/.lemon
	unzip lemon.zip
	rm lemon.zip
	npm install
	cd app/fact*
	wget -O apktool.jar https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.8.1.jar
	cd ~
	source <(curl -fsSL https://raw.githubusercontent.com/efxtv/npm/main/apktool/apktool-kali-ubuntu.sh)
}
se