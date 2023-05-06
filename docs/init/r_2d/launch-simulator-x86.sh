#/usr/bin/env bash

APP_NAME="$(cat Cargo.toml | dasel -r toml '.package.name')"
BUNDLE_ID="$(cat Cargo.toml | dasel -r toml '.package.metadata.bundle.identifier')"

ARCH=$(uname -m)

cargo bundle --target ${ARCH}-apple-ios
xcrun simctl boot "iPhone 14 Pro"  
open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app 
xcrun simctl install booted "target/${ARCH}-apple-ios/debug/bundle/ios/$APP_NAME.app"
xcrun simctl launch --console booted "$BUNDLE_ID"


