#!/usr/bin/env bash
./deploy-local.sh
echo "test market and archives apk build."
cd sample
../gradlew -Pmarket=markets.txt clean archiveApkRelease --refresh-dependencies --stacktrace $1 $2
cd ..
