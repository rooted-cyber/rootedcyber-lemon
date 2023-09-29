pkc() {
for a in wget proot python;do
cd $PREFIX/bin
if [ -e $a ];then
printf "\n \033[3;93m already install\n"
else
apt update
apt upgrade
apt install $a || apt reinstall $a -y
fi
done
}
pkc
chf() {
cd ~
if [ -e ubuntu.sh ];then
printf "\n Connect VPN\n"
bash ubuntu.sh
rm $PREFIX/bin/sub > /dev/null 2>&1
cat >> $PREFIX/bin/sub << EOF
#!/data/data/com.termux/files/usr/bin/bash
cd ~/Te*Ult*
bash sta*ubu*
EOF
chmod 777 $PREFIX/bin/sub
printf "\n \033[1;92m Now you can star ubuntu Type:\033[1;93m sub\n"
else
wget https://raw.githubusercontent.com/rooted-cyber/Anlinux-Resources/master/Scripts/Installer/Ubuntu/ubuntu.sh
printf "\n Connect VPN\n"
bash ubuntu.sh
rm $PREFIX/bin/sub > /dev/null 2>&1
cat >> $PREFIX/bin/sub << EOF
#!/data/data/com.termux/files/usr/bin/bash
cd ~/Te*Ult*
bash sta*ubu*
EOF
chmod 777 $PREFIX/bin/sub
printf "\n \033[1;92m Now you can star ubuntu Type:\033[1;93m sub\n"
fi
}
chf
