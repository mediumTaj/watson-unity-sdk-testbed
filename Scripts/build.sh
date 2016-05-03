#! /bin/sh

project="watson-developer-cloud-unity-sdk-testbed"

echo "Attempting to build $project for Windows"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -nographics \
  -silent-crashes \
  -logFile $(pwd)/unity.log \
  -projectPath $(pwd) \
  -buildWindowsPlayer "$(pwd)/Build/windows/$project.exe" \
  -quit
if [ $? != 0 ] ; then 
  echo "Build Windows FAILED!"
else
  echo "Build Windows COMPLETED!"
fi

echo "Attempting to build $project for OS X"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -nographics \
  -silent-crashes \
  -logFile $(pwd)/unity.log \
  -projectPath $(pwd) \
  -buildOSXUniversalPlayer "$(pwd)/Build/osx/$project.app" \
  -quit
if [ $? != 0 ] ; then 
  echo "Build Mac FAILED!"
else
  echo "Build Mac COMPLETED!"
fi

echo "Attempting to build $project for Linux"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -nographics \
  -silent-crashes \
  -logFile $(pwd)/unity.log \
  -projectPath $(pwd) \
  -buildLinuxUniversalPlayer "$(pwd)/Build/linux/$project.exe" \
  -quit
if [ $? != 0 ] ; then 
  echo "Build Linux FAILED!"
else
  echo "Build Linux COMPLETED!"
fi

echo 'Logs from build'
cat $(pwd)/unity.log