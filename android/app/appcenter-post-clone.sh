#!/usr/bin/env bash
# place this script in project/android/app/
cd ..
# fail if any command fails
set -e
# debug log
set -x

cd ..
# choose a different release channel if you want - https://github.com/flutter/flutter/wiki/Flutter-build-release-channels
# stable - recommended for production
wget https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_1.20.3-stable.zip
git clone -b stable https://github.com/flutter/flutter.git
export PATH=`pwd`/flutter/bin:$PATH

flutter channel beta
flutter upgrade
yes Y | flutter doctor --android-licenses # accept all licenses
flutter build apk --release
flutter build appbundle --release

# copy the APK where AppCenter will find it
#mkdir -p android/app/build/outputs/apk/; mv build/app/outputs/apk/release/app-release.apk $_<