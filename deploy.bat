call docker build -t spartha1995/automatedbuilddemo:%BUILD_NUMBER% .
call docker login -u spartha1995 --password-stdin
call docker push spartha1995/automatedbuilddemo:%BUILD_NUMBER%
