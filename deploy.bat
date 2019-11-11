%imageTag% = "%BUILD_NUMBER%-%BRANCH_NAME%"
echo %imageTag%

call docker build -t automatedbuilddemo .
call docker tag automatedbuilddemo spartha1995/automatedbuilddemo:%imageTag%
call docker login -u spartha1995 --password-stdin
call docker push spartha1995/automatedbuilddemo:%imageTag%
