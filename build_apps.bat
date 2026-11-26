@echo off
echo ========================================================
echo   Driver Hub - Android & iOS Build Script
echo ========================================================
echo.

set JAVA_HOME=C:\Program Files\Eclipse Adoptium\jdk-17.0.16.8-hotspot
set ANDROID_HOME=D:\android\sdk

echo [1/3] Syncing Capacitor Web Assets...
call npx cap sync

echo.
echo [2/3] Building Android Release APK and AAB Bundle...
cd android
call gradlew.bat assembleRelease bundleRelease

echo.
echo ========================================================
echo   Build Finished!
echo   APK location: android\app\build\outputs\apk\release\app-release.apk
echo   AAB location: android\app\build\outputs\bundle\release\app-release.aab
echo ========================================================
cd ..
pause

