echo Running UnitySDK UnitTests...

project="watson-developer-cloud-unity-sdk-testbed"

/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -executemethod RunUnitTest.All \
  -projectPath $(pwd) \
  -quit
if [ $? != 0 ] ; then 
	echo "UnitTest FAILED!"
	exit 1
else
	echo "UnitTest COMPLETED!"
	exit 0
fi
