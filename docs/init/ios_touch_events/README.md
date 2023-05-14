
```
cargo new ios_touch_events && cd ios_touch_events
```

```
cargo add bevy 
```


- [ ] install the build tool:

```
cargo install cargo-bundle
```


- [ ] Adding Compilation Targets

```
rustup target list | grep ios
```
> Outputs :
```yaml
aarch64-apple-ios
aarch64-apple-ios-sim
x86_64-apple-ios (installed)
```

# for production $(uname -m)

```
rustup target add $(uname -m)-apple-ios
```

## :gear: Confile File `Signing.toml` (to be added depending on your configuration)

```toml
# Metadata used when generating an iOS APP, for example.

# To find a certificate in the keychain
# certtool y | grep Joe Foo 

# to find a provisioning file in the provisioning directory
# ls -l ~/Library/MobileDevice/Provisioning\ Profiles

[package.metadata.signing]
signature = "Apple Development: Joe Foo (B6ADF9EUYT)"
provisioning_file = "bevy_provisioning_profile.mobileprovision"
```




# References

- [ ] [xcodebuild how to sign app with command line?](https://stackoverflow.com/questions/28395427/xcodebuild-how-to-sign-app-with-command-line)
- [ ] [TN3125: Inside Code Signing: Provisioning Profiles](https://developer.apple.com/documentation/technotes/tn3125-inside-code-signing-provisioning-profiles)
- [ ] [Code Signing Resources](https://developer.apple.com/forums/thread/707080/)
- [ ] [iOS Code Signing: 5. Signing iOS App](http://shashikantjagtap.net/ios-code-signing-5-signing-ios-app/)

- [ ] Create a CSR and store in keychain

```
certtool c   
```

- [ ] [Command to check if iOS distribution certificate is installed](https://stackoverflow.com/questions/33485124/command-to-check-if-ios-distribution-certificate-is-installed)



- [ ] Entitlement issue
- [ ] [The application could not be verified](https://stackoverflow.com/questions/64550207/objection-frida-the-application-could-not-be-verified)

## [TN3125: Inside Code Signing: Provisioning Profiles](https://developer.apple.com/documentation/technotes/tn3125-inside-code-signing-provisioning-profiles)

```
ios-deploy --list_profiles
```
> Outputs :
```yaml
[....] Waiting for iOS device to be connected
[....] Using c087b70440203489a875f0d4cc3ce7716ba09f5c (J171AP, iPad 7, iphoneos, arm64, 16.4.1, ) a.k.a. 'Ankorahotra'.
(
        {
        ExpirationDate = "2024-05-11 14:30:54 +0000";
        Name = "bevy_provisioning_profile";
        UUID = "7b7c0c8ddf4f-de7b-4820-a059-7b7c0c8ddf4f";
    }
)
```

:tada: Manually add the provisioning profile to the iPad device

```
ios-deploy --debug \
           --id ${DEVICE_ID} \
           --profile-install ~/Downloads/bevy_provisioning_profile.mobileprovision 
```

- [ ] find identities in local keychain database `~/Library/Keychains/login.keychain-db` 

```
security find-identity -p codesigning 
```
> Outputs :
```yaml

Policy: Code Signing
  Matching identities
  1) 30D51445A4EBDAAC46819CD09CD734A4EBDAAC46819CD0 "Apple Development: Joe Foo (B6ADF9EUYT)"
     1 identities found

  Valid identities only
  1) 30D51445A4EBDAAC46819CD09CD734A4EBDAAC46819CD0 "Apple Development: Joe Foo (B6ADF9EUYT)"
     1 valid identities found
```

 - [ ] [iOS Code Signing: Provisioning Profiles](https://medium.com/codequest/ios-code-signing-provisioning-profile-d9cf3fcc85d2)
 - [ ] [A Beginner’s Guide to Code Signing in iOS Development](https://medium.com/@bingkuo/a-beginners-guide-to-code-signing-in-ios-development-d3d5285f0960)


- [ ] [Placing Content in a Bundle](https://developer.apple.com/documentation/bundleresources/placing_content_in_a_bundle)
