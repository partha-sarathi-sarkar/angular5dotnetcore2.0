%branch% = "%BRANCH_NAME%"
%buildNumber% = "1.0.%BUILD_NUMBER%-%branch%"
echo %buildNumber%
SET BUILD_NUMBER = %buildNumber%
echo %BUILD_NUMBER%