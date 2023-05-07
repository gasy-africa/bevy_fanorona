
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


