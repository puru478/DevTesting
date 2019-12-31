#!/bin/bash

cmdCommand="git $1 $2 $3 $4 $5 $6"

basePath=~/Work/Zolo/

echo "Executing..."
echo $1 $2 $3

uikitPath=${basePath}ZUIKit
loginkitPath=${basePath}ZLoginKit
commonsPath=${basePath}ZCommonsKit
controlsPath=${basePath}ZControlsKit
paymentsKitPath=${basePath}ZPaymentsKit
apiManagerPath=${basePath}APIManager
consumerPath=${basePath}Zolo-Customer

printf "\n"

cd $uikitPath
printf "\e[7m\e[1m\e[93m UIKit \033[m\n"
$cmdCommand | sed 's/^/  /'

printf "\n"

cd $commonsPath
printf "\e[7m\e[1m\e[93m Commons \033[m\n"
$cmdCommand | sed 's/^/  /'

printf "\n"

cd $controlsPath
printf "\e[7m\e[1m\e[93m Controls \033[m\n"
$cmdCommand | sed 's/^/  /'

printf "\n"

cd $loginkitPath
printf "\e[7m\e[1m\e[93m LoginKit \033[m\n"
$cmdCommand | sed 's/^/  /'

printf "\n"

cd $paymentsKitPath
printf "\e[7m\e[1m\e[93m Payments Kit \033[m\n"
$cmdCommand | sed 's/^/  /'

printf "\n"

cd $apiManagerPath
printf "\e[7m\e[1m\e[93m API Manager \033[m\n"
$cmdCommand | sed 's/^/  /'
printf "\n"

cd $consumerPath
printf "\e[7m\e[1m\e[93m Consumer \033[m\n"
$cmdCommand | sed 's/^/  /'
printf "\n"
