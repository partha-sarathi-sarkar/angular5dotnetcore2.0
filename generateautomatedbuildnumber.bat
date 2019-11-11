REM TeamCity's auto-incrementing build counter; ensures each build is unique

REM This gets the name of the current Git branch. 
%branch% = "%BRANCH_NAME%" -replace '_','-'
REM Sometimes the branch will be a full path, e.g., 'refs/heads/master'. 
REM If so we'll base our logic just on the last part.
if (%branch%.Contains("/")) 
{
  %branch% = %branch%.substring(%branch%.lastIndexOf("/")).trim("/")
}

REM replace numbers with empty strings
%branch% = %branch% -replace "[0-9]"

REM first 10 chars
%branch% = %branch%.substring(0, 10)

%buildNumber% = "1.0.%BUILD_NUMBER%-%branch%"
echo %buildNumber%
SET BUILD_NUMBER = %buildNumber%
echo %BUILD_NUMBER%
REM Write-Host "##teamcity[buildNumber '$buildNumber']"