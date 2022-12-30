#!/usr/bin/env bash

set -ex

export XCODE_SCHEME="example-1"
export DESTINATION="platform=iOS Simulator,name=iPad Pro (9.7-inch),OS=15.5"
export PRODUCT="Debug-iphonesimulator"

# Clean-up last build
rm -rf .build .swiftpm derivedData "$XCODE_SCHEME.xcresult"

# List available schemes
xcodebuild -list

# Build the xctestrun
xcodebuild \
    -derivedDataPath "$PWD/derivedData" \
    -enableCodeCoverage YES \
    -scheme "$XCODE_SCHEME" \
    -destination "$DESTINATION" \
    build-for-testing

# Run the xctestrun
xcodebuild \
    -resultBundlePath "$XCODE_SCHEME.xcresult" \
    -enableCodeCoverage YES \
    -destination "$DESTINATION" \
    -xctestrun derivedData/Build/Products/*.xctestrun \
    test-without-building
