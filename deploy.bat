call docker build -t automatedbuilddemo .
call docker tag automatedbuilddemo spartha1995/automatedbuilddemo:%BUILD_NUMBER%
call docker login -u spartha1995 --password-stdin
call docker push spartha1995/automatedbuilddemo:%BUILD_NUMBER%
