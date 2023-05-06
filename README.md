# Fanorona



# References

- [ ] [Chess game in Rust using Bevy](https://caballerocoll.com/blog/bevy-chess-tutorial)

# Fanorana in [Bevy](https://bevyengine.org/)

Bevy is a data-driven game engine built in Rust. 

:round_pushpin: Create a project

```
cargo new fanorona_bevy && cd fanorona_bevy
```

:round_pushpin: Fast compiles

- [ ] LLD Linker: The normal linker is a bit slow, so we can swap it out for the LLD Linker to get a speedup:

```
brew install michaeleisel/zld/zld
```

- [ ] Enable nightly Rust

* to install nightly,

```
rustup toolchain install nightly
``` 
> Outputs :
```yaml
info: syncing channel updates for 'nightly-x86_64-apple-darwin'
info: latest update on 2023-05-06, rust version 1.71.0-nightly (f9a6b7158 2023-05-05)
info: downloading component 'cargo'
info: downloading component 'clippy'
info: downloading component 'rust-docs'
info: downloading component 'rust-std'
info: downloading component 'rustc'
info: downloading component 'rustfmt'
info: removing previous version of component 'cargo'
info: removing previous version of component 'clippy'
info: removing previous version of component 'rust-docs'
info: removing previous version of component 'rust-std'
info: removing previous version of component 'rustc'
info: removing previous version of component 'rustfmt'
info: installing component 'cargo'
info: installing component 'clippy'
info: installing component 'rust-docs'
 13.6 MiB /  13.6 MiB (100 %)   3.9 MiB/s in  2s ETA:  0s
info: installing component 'rust-std'
 27.1 MiB /  27.1 MiB (100 %)  11.9 MiB/s in  2s ETA:  0s
info: installing component 'rustc'
 55.6 MiB /  55.6 MiB (100 %)  13.1 MiB/s in  4s ETA:  0s
info: installing component 'rustfmt'

  nightly-x86_64-apple-darwin updated - rustc 1.71.0-nightly (f9a6b7158 2023-05-05) (from rustc 1.70.0-nightly (2036fdd24 2023-03-27))

info: checking for self-updates
info: downloading self-update
```

* on the project directory to enable it.

```
rustup override set nightly 
```
> Outputs :
```yaml
info: using existing install for 'nightly-x86_64-apple-darwin'
info: override toolchain for '/Users/valiha/Developer/fanorona-bevy' set to 'nightly-x86_64-apple-darwin'

  nightly-x86_64-apple-darwin unchanged - rustc 1.71.0-nightly (f9a6b7158 2023-05-05)
```

* Install the `config` file

```
mkdir .cargo && wget -o .cargo/config https://raw.githubusercontent.com/bevyengine/bevy/main/.cargo/config_fast_builds
```

* Run to test


```
cargo run
```
> Outputs :
```yaml
   Compiling bevy_fanorona v0.1.0 (/Users/valiha/Developer/fanorona-bevy)
    Finished dev [unoptimized + debuginfo] target(s) in 1.98s
     Running `target/debug/bevy_fanorona`
Hello, world!
```

## :a: Getting started

- [ ] Add the `bevy` library

```
cargo add bevy
```

- [ ] Let's remove all the contents of `main.rs` and replace them with the following:

```rust
use bevy::prelude::*;

fn main() {
    App::new()
      .add_plugins(DefaultPlugins)
      .run();
}
```

- [ ] Run the `App`

```
cargo run
```
> Outputs :
```yaml
   Compiling bevy_fanorona v0.1.0 (/Users/valiha/Developer/fanorona-bevy)
    Finished dev [unoptimized + debuginfo] target(s) in 2.63s
     Running `target/debug/bevy_fanorona`
2023-05-06T19:19:38.187097Z  INFO bevy_render::renderer: AdapterInfo { name: "AMD Radeon Pro 560", vendor: 0, device: 0, device_type: DiscreteGpu, driver: "", driver_info: "", backend: Metal }
2023-05-06T19:19:39.552211Z  INFO bevy_winit::system: Creating new window "Bevy App" (0v0)
2023-05-06T19:19:39.721104Z  INFO bevy_diagnostic::system_information_diagnostics_plugin::internal: SystemInfo { os: "MacOS 13.3.1 ", kernel: "22.4.0", cpu: "Intel(R) Core(TM) i7-7820HQ CPU @ 2.90GHz", core_count: "4", memory: "16.0 GiB" }
```

```rust
        // Set antialiasing to use 4 samples
        .add_resource(Msaa { samples: 4 })
        // Set WindowDescriptor Resource to change title and size
        .add_resource(WindowDescriptor {
            title: "Chess!".to_string(),
            width: 1600.,
            height: 1600.,
            ..Default::default()
        })
```

# References

- [ ] [Chess game in Rust using Bevy](https://caballerocoll.com/blog/bevy-chess-tutorial/)