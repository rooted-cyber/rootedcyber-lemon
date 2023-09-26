pd{} {
random
printf "login details:\n\n\n\n"
random
printf "Username :\033[0m admin\n\n"
random
printf "Password :\033[0m rootedcyber\n\n"
exit
}
ban() {
echo -e "\033[1;92m"
toilet -f font lemon
printf "\n\t\033[10m [::]\033[1;93m Lemon tool \033[0m [::]\n"
}
lis() {
cd /bin
if [ -e lemon ];then
random
pd
printf "\n Already install\n Now start......\n\n"
lemon
else
cat >> lemon << EOF
#!/bin/bash
cd ~/.lemon
node index.js
EOF
chmod 755 lemon
sleep 1
random
printf "\n installed successfully\n\n Now run\033[0m lemon\n\n"
pd
fi
}
hash() {
random
echo -e -n "Type word:\033[0m "
read m
if [ $m ];then
random
printf "\n Your md5 hash : \033[0m"
echo -n $m | openssl md5|awk '{print $2}'
fi
}
epa() {
nano ~/.lemon/main*
}
menu() {
ban
printf "\n\033[1;92m[\033[0m1\033[1;92m]\033[1;93m Lemon install & start"
printf "\n\033[1;92m[\033[0m2\033[1;92m]\033[1;93m md5 hash generator"
printf "\n\033[1;92m[\033[0m3\033[1;92m]\033[1;93m Edit password"
printf "\n\033[1;92m[\033[0m4\033[1;92m]\033[1;93m Exit\n\n\n"
echo -e -n "Enter option : "
read b
case $b in
1)lis ;;
2)hash ;;
3)epa ;;
4)exit ;;
*)menu ;;
esac
}