

cmdCommand="git push origin pawan_dev"

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

#------------Create PRs------------

echo "\nTime for PRs"

gitlabBaseURL=https://gitlab.com/
gitlabUsername=pawan.zolo
targetBranch=develop
sourceBranch=pawan_dev

kSourceBranchPrefix=merge_request%5Bsource_branch%5D=
kSourceProjectIDPrefix=merge_request%5Bsource_project_id%5D=
kTargetBranchPrefix=merge_request%5Btarget_branch%5D=
kTargetProjectIDPrefix=merge_request%5Btarget_project_id%5D=

#------------ZUIKIT------------
projectCode=9905774
repoName=zuikit
open "${gitlabBaseURL}${gitlabUsername}/${repoName}/merge_requests/new?${kSourceBranchPrefix}${sourceBranch}&${kSourceProjectIDPrefix}${projectCode}&${kTargetBranchPrefix}${targetBranch}&${kTargetProjectIDPrefix}${projectCode}"

#------------APIManager------------
projectCode=9906061
repoName=APIManager
open "${gitlabBaseURL}${gitlabUsername}/${repoName}/merge_requests/new?${kSourceBranchPrefix}${sourceBranch}&${kSourceProjectIDPrefix}${projectCode}&${kTargetBranchPrefix}${targetBranch}&${kTargetProjectIDPrefix}${projectCode}"


#------------ZPaymentsKit------------
projectCode=9908400
repoName=ZPaymentsKit
open "${gitlabBaseURL}${gitlabUsername}/${repoName}/merge_requests/new?${kSourceBranchPrefix}${sourceBranch}&${kSourceProjectIDPrefix}${projectCode}&${kTargetBranchPrefix}${targetBranch}&${kTargetProjectIDPrefix}${projectCode}"


#------------ZControlsKit------------
projectCode=9908389
repoName=ZControlsKit
open "${gitlabBaseURL}${gitlabUsername}/${repoName}/merge_requests/new?${kSourceBranchPrefix}${sourceBranch}&${kSourceProjectIDPrefix}${projectCode}&${kTargetBranchPrefix}${targetBranch}&${kTargetProjectIDPrefix}${projectCode}"


#------------ZCommonsKit------------
projectCode=9908352
repoName=ZCommonsKit
open "${gitlabBaseURL}${gitlabUsername}/${repoName}/merge_requests/new?${kSourceBranchPrefix}${sourceBranch}&${kSourceProjectIDPrefix}${projectCode}&${kTargetBranchPrefix}${targetBranch}&${kTargetProjectIDPrefix}${projectCode}"


#------------ZLoginKit------------
projectCode=9908377
repoName=ZLoginKit
open "${gitlabBaseURL}${gitlabUsername}/${repoName}/merge_requests/new?${kSourceBranchPrefix}${sourceBranch}&${kSourceProjectIDPrefix}${projectCode}&${kTargetBranchPrefix}${targetBranch}&${kTargetProjectIDPrefix}${projectCode}"


#------------Zolo-Customer------------
projectCode=9906010
repoName=Zolo-Customer
open "${gitlabBaseURL}${gitlabUsername}/${repoName}/merge_requests/new?${kSourceBranchPrefix}${sourceBranch}&${kSourceProjectIDPrefix}${projectCode}&${kTargetBranchPrefix}${targetBranch}&${kTargetProjectIDPrefix}${projectCode}"



#------------Review all Pull Requests------------
open "https://gitlab.com/dashboard/merge_requests?assignee_username=${gitlabUsername}"


echo "\nDone!\n\n"

