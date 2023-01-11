
pushd android
# flutter build generates files in android/ for building the app
flutter build apk
./gradlew app:assembleAndroidTest
./gradlew app:assembleDebug -Ptarget=integration_test/app_test.dart
popd

# gcloude auth activate-service-account --key-file=tests-dcb58-51c33f71847b.json

# gcloude --quiet config set project tests-dcb58

# gcloude firebase test android run --type instrumentation \
#   --app build/app/outputs/apk/debug/app-debug.apk \
#   --test build/app/outputs/apk/androidTest/debug/app-debug-androidTest.apk \

