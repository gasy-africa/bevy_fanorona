#/usr/bin/env bash


# usage: bash launch-devicess.sh 00304120-1E2C00C10E007A801E "iPhone Distribution: MyCompany LLC"

APP_NAME="$(cat Cargo.toml | dasel -r toml '.package.name')"
BUNDLE_ID="$(cat Cargo.toml | dasel -r toml '.package.metadata.bundle.identifier')"
ARCH=aarch64

# aarch64-apple-ios
# xcrun xctrace list devices
DEVICE_ID=${1}
SIGNATURE=${2}


rustup target add ${ARCH}-apple-ios

# Compile in a specific platform
cargo bundle --target ${ARCH}-apple-ios 

# Install the App onto the booted device
ios-deploy --debug \
           --id ${DEVICE_ID} \
           --bundle_id ${BUNDLE_ID}  \
           --bundle "target/${ARCH}-apple-ios/debug/bundle/ios/$APP_NAME.app"

  # = note: the `aarch64-apple-ios` target may not be installed
  # = help: consider downloading the target with `rustup target add aarch64-apple-ios`
  # = help: consider building the standard library from source with `cargo build -Zbuild-std`

# Check is code is signed
codesign -dvvvv "target/${ARCH}-apple-ios/debug/bundle/ios/$APP_NAME.app"
# target/aarch64-apple-ios/debug/bundle/ios/ios_touch_events.app/ios_touch_events: code object is not signed at all

codesign --force --verbose --sign ${SIGNATURE} "target/${ARCH}-apple-ios/debug/bundle/ios/$APP_NAME.app"
# error: The specified item could not be found in the keychain.

# Copy the assets onto the booted device
#cp -r assets "$(xcrun simctl get_app_container booted ${BUNDLE_ID})"

# Print logs to the console
# xcrun simctl launch --console booted "${BUNDLE_ID}"


