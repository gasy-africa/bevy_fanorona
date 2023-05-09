
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

# References

- [ ] [xcodebuild how to sign app with command line?](https://stackoverflow.com/questions/28395427/xcodebuild-how-to-sign-app-with-command-line)
- [ ] [TN3125: Inside Code Signing: Provisioning Profiles](https://developer.apple.com/documentation/technotes/tn3125-inside-code-signing-provisioning-profiles)
- [ ] [Code Signing Resources](https://developer.apple.com/forums/thread/707080/)
- [ ] [iOS Code Signing: 5. Signing iOS App](http://shashikantjagtap.net/ios-code-signing-5-signing-ios-app/)

- [ ] Create a CSR and store in keychain

```
certtool c   
```


