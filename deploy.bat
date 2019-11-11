call docker build -t spartha1995/automatedbuilddemo:%BUILD_NUMBER% .
call docker login -u spartha1995 -p partha9007976323
call docker push spartha1995/automatedbuilddemo:%BUILD_NUMBER%
