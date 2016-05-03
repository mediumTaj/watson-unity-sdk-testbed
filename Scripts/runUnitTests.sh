echo Running UnitySDK UnitTest...

project="watson-developer-cloud-unity-sdk-testbed"

/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -executemethod RunUnitTest.All \
  -projectPath $(pwd) \
  -quit
  
IF NOT "%ERRORLEVEL%"=="0" goto error

:success
echo 'UnitTest COMPLETED!"
exit /B 0
:error
echo "UnitTest FAILED!"
exit /B 1