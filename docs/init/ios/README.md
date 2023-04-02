# Fanorona



- [ ] Add the `bevy` library

```
cargo add bevy
```

- [ ] Replace `src/main.rs` source code with the below snippet

```rust
use bevy::prelude::*;

fn main() {
    App::new()
        .add_system(hello_world_system)
        .run();
}

fn hello_world_system() {
    println!("Hello Rust");
}
```

- [ ] Test

```
cargo run
```
> Outputs :
<pre>
   Compiling ios v0.1.0 (~/Developer/fanorona-bevy/docs/init/ios)
    Finished dev [unoptimized + debuginfo] target(s) in 1.54s
     Running `target/debug/ios`
Hello Rust
</pre>

- [ ] Add the `Bevy`'s default plugins to the `App`

```rust
  .add_plugins(DefaultPlugins)
```

- [ ] Test

```
cargo run
```
> Outputs :
<pre>
   Compiling ios v0.1.0 (~/Developer/fanorona-bevy/docs/init/ios)
    Finished dev [unoptimized + debuginfo] target(s) in 2.77s
     Running `target/debug/ios`
2023-04-02T18:55:00.338646Z  INFO bevy_render::renderer: AdapterInfo { name: "AMD Radeon Pro 560", vendor: 0, device: 0, device_type: DiscreteGpu, driver: "", driver_info: "", backend: Metal }
2023-04-02T18:55:01.766183Z  INFO bevy_winit::system: Creating new window "Bevy App" (0v0)
2023-04-02T18:55:01.899503Z  INFO bevy_diagnostic::system_information_diagnostics_plugin::internal: SystemInfo { os: "MacOS 13.2.1 ", kernel: "22.3.0", cpu: "Intel(R) Core(TM) i7-7820HQ CPU @ 2.90GHz", core_count: "4", memory: "16.0 GiB" }
Hello Rust
Hello Rust
Hello Rust
</pre>

![image](images/bevy_app.png)


:round_pushpin: Where is the GUI?

```
cargo install cargo-bundle
```

- [ ] Install [`Dasel`](https://daseldocs.tomwright.me/)

```
brew install dasel
```

# References

- [ ] [Native iOS Game Development w/ Rust](https://dev.to/wadecodez/exploring-rust-for-native-ios-game-development-2bna)

