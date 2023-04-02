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

:round_pushpin: Where is the GUI?

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
   .....
   Compiling ios v0.1.0 (/Users/<redacted>/Developer/fanorona-bevy/docs/init/ios)
    Finished dev [unoptimized + debuginfo] target(s) in 3m 10s
     Running `target/debug/ios`
2023-04-02T20:59:22.061203Z  INFO bevy_render::renderer: AdapterInfo { name: "Apple M1", vendor: 0, device: 0, device_type: IntegratedGpu, driver: "", driver_info: "", backend: Metal }
2023-04-02T20:59:22.574230Z  INFO bevy_winit::system: Creating new window "Bevy App" (0v0)
2023-04-02T20:59:22.674665Z  INFO bevy_diagnostic::system_information_diagnostics_plugin::internal: SystemInfo { os: "MacOS 13.2.1 ", kernel: "22.3.0", cpu: "Apple M1", core_count: "8", memory: "16.0 GiB" }
Hello Rust
Hello Rust
Hello Rust
</pre>

![image](images/bevy_app.png)

:two: Building for iOS (Cross Platform Upfront)

- [ ] Bundling (if not already installed)

```
cargo install cargo-bundle
```
> Outputs :
<pre>
    Updating crates.io index
  Downloaded cargo-bundle v0.6.0
  Downloaded 1 crate (66.7 KB) in 0.20s
  Installing cargo-bundle v0.6.0
  Downloaded num_cpus v1.15.0
  Downloaded time v0.1.45
  Downloaded rle-decode-fast v1.0.3
  Downloaded rayon-core v1.11.0
  Downloaded xattr v0.2.3
  Downloaded tar v0.4.38
  Downloaded rand_jitter v0.1.4
  Downloaded toml v0.4.10
  Downloaded dtoa v0.4.8
  Downloaded serde_json v0.9.10
  Downloaded rand_os v0.1.3
  Downloaded num-iter v0.1.43
  Downloaded siphasher v0.2.3
  Downloaded target_build_utils v0.3.1
  Downloaded serde v0.9.15
  Downloaded rand_hc v0.1.0
  Downloaded crossbeam-deque v0.8.3
  Downloaded rayon v1.7.0
  Downloaded uuid v0.5.1
  Downloaded phf_codegen v0.7.24
  Downloaded rand_xorshift v0.1.1
  Downloaded md5 v0.3.8
  Downloaded lzw v0.10.0
  Downloaded phf v0.7.24
  Downloaded png v0.6.2
  Downloaded num-rational v0.1.42
  Downloaded png v0.11.0
  Downloaded take_mut v0.2.2
  Downloaded term v0.4.6
  Downloaded itoa v0.3.4
  Downloaded gif v0.9.2
  Downloaded cfb v0.3.1
  Downloaded deflate v0.7.20
  Downloaded inflate v0.1.1
  Downloaded msi v0.2.0
  Downloaded enum_primitive v0.1.1
  Downloaded cab v0.1.0
  Downloaded inflate v0.3.4
  Downloaded icns v0.2.2
  Downloaded rand_pcg v0.1.2
  Downloaded autocfg v0.1.8
  Downloaded rand_chacha v0.1.1
  Downloaded phf_shared v0.7.24
  Downloaded strsim v0.7.0
  Downloaded either v1.8.1
  Downloaded bitflags v0.7.0
  Downloaded chrono v0.4.24
  Downloaded rand_isaac v0.1.1
  Downloaded rand_core v0.4.2
  Downloaded memoffset v0.8.0
  Downloaded glob v0.2.11
  Downloaded dirs v1.0.5
  Downloaded ar v0.3.1
  Downloaded sha1 v0.2.0
  Downloaded phf_generator v0.7.24
  Downloaded num-traits v0.1.43
  Downloaded rand_core v0.3.1
  Downloaded rand v0.6.5
  Downloaded iana-time-zone v0.1.54
  Downloaded crossbeam-epoch v0.9.14
  Downloaded jpeg-decoder v0.1.22
  Downloaded libflate v0.1.27
  Downloaded image v0.12.4
  Downloaded 63 crates (2.1 MB) in 0.52s
   Compiling autocfg v1.1.0
   Compiling libc v0.2.140
   Compiling cfg-if v1.0.0
   Compiling rand_core v0.4.2
   Compiling crossbeam-utils v0.8.15
   Compiling byteorder v1.4.3
   Compiling adler32 v1.2.0
   Compiling encoding_index_tests v0.1.4
   Compiling scopeguard v1.1.0
   Compiling siphasher v0.2.3
   Compiling autocfg v0.1.8
   Compiling rand_core v0.3.1
   Compiling adler v1.0.2
   Compiling phf_shared v0.7.24
   Compiling rand_hc v0.1.0
   Compiling rand_xorshift v0.1.1
   Compiling rand_isaac v0.1.1
   Compiling num-traits v0.2.15
   Compiling num-integer v0.1.45
   Compiling memoffset v0.8.0
   Compiling rand_pcg v0.1.2
   Compiling rand_chacha v0.1.1
   Compiling crossbeam-epoch v0.9.14
   Compiling rand v0.6.5
   Compiling rand_os v0.1.3
   Compiling rand_jitter v0.1.4
   Compiling num-iter v0.1.43
   Compiling proc-macro2 v1.0.55
   Compiling core-foundation-sys v0.8.3
   Compiling memchr v2.5.0
   Compiling crc32fast v1.3.2
   Compiling rayon-core v1.11.0
   Compiling crossbeam-channel v0.5.7
   Compiling num_cpus v1.15.0
   Compiling crossbeam-deque v0.8.3
   Compiling miniz_oxide v0.6.2
   Compiling deflate v0.7.20
   Compiling cc v1.0.79
   Compiling unicode-ident v1.0.8
   Compiling num-traits v0.1.43
   Compiling phf_generator v0.7.24
   Compiling quote v1.0.26
   Compiling phf_codegen v0.7.24
   Compiling serde v1.0.159
   Compiling backtrace v0.3.67
   Compiling either v1.8.1
   Compiling gimli v0.27.2
   Compiling bitflags v1.3.2
   Compiling version_check v0.9.4
   Compiling sha1 v0.2.0
   Compiling uuid v0.5.1
   Compiling rayon v1.7.0
   Compiling error-chain v0.12.4
   Compiling iana-time-zone v0.1.54
   Compiling object v0.30.3
   Compiling target_build_utils v0.3.1
   Compiling time v0.1.45
   Compiling encoding-index-japanese v1.20141219.5
   Compiling encoding-index-korean v1.20141219.5
   Compiling encoding-index-singlebyte v1.20141219.5
   Compiling encoding-index-simpchinese v1.20141219.5
   Compiling encoding-index-tradchinese v1.20141219.5
   Compiling inflate v0.3.4
   Compiling bitflags v0.7.0
   Compiling lzw v0.10.0
   Compiling serde_derive v1.0.159
   Compiling rustc-demangle v0.1.22
   Compiling addr2line v0.19.0
   Compiling itoa v0.3.4
   Compiling unicode-width v0.1.10
   Compiling color_quant v1.1.0
   Compiling dtoa v0.4.8
   Compiling inflate v0.1.1
   Compiling serde v0.9.15
   Compiling gif v0.9.2
   Compiling jpeg-decoder v0.1.22
   Compiling textwrap v0.11.0
   Compiling png v0.6.2
   Compiling png v0.11.0
   Compiling encoding v0.2.33
   Compiling serde_json v0.9.10
   Compiling chrono v0.4.24
   Compiling syn v2.0.13
   Compiling cfb v0.3.1
   Compiling phf v0.7.24
   Compiling flate2 v1.0.25
   Compiling num-rational v0.1.42
   Compiling enum_primitive v0.1.1
   Compiling atty v0.2.14
   Compiling xattr v0.2.3
   Compiling filetime v0.2.20
   Compiling ansi_term v0.12.1
   Compiling strsim v0.8.0
   Compiling vec_map v0.8.2
   Compiling take_mut v0.2.2
   Compiling rle-decode-fast v1.0.3
   Compiling scoped_threadpool v0.1.9
   Compiling same-file v1.0.6
   Compiling toml v0.4.10
   Compiling walkdir v2.3.3
   Compiling image v0.12.4
   Compiling libflate v0.1.27
   Compiling clap v2.34.0
   Compiling tar v0.4.38
   Compiling cab v0.1.0
   Compiling msi v0.2.0
   Compiling icns v0.2.2
   Compiling dirs v1.0.5
   Compiling glob v0.2.11
   Compiling term v0.4.6
   Compiling md5 v0.3.8
   Compiling ar v0.3.1
   Compiling strsim v0.7.0
   Compiling cargo-bundle v0.6.0
    Finished release [optimized] target(s) in 29.11s
  Installing /Users/<redacted>/.cargo/bin/cargo-bundle
   Installed package `cargo-bundle v0.6.0` (executable `cargo-bundle`)
</pre>

- [ ] Adding Compilation Targets

```
rustup target list | grep ios
```
> Outputs :
<pre>
aarch64-apple-ios
aarch64-apple-ios-sim
x86_64-apple-ios
</pre>


```
rustup target add x86_64-apple-ios
```


```
cargo bundle --target x86_64-apple-ios
```
> Outputs :
<pre>
info: downloading component 'rust-std' for 'aarch64-apple-ios-sim'
info: installing component 'rust-std' for 'aarch64-apple-ios-sim'
 26.5 MiB /  26.5 MiB (100 %)  12.5 MiB/s in  2s ETA:  0s
</pre>


```
ls -l target  | grep x86_64-apple
```
> drwxr-xr-x@  4 valiha  staff  128 Apr  2 16:28 x86_64-apple-ios

:x: Troubleshooting

- [ ] Add `.package.description` field to `Cargo.toml` file

```
cargo bundle --target x86_64-apple-ios
```
> error: missing field `description` for key `package`



- [ ] Install [`Dasel`](https://daseldocs.tomwright.me/)

```
brew install dasel
```

# References

- [ ] [Native iOS Game Development w/ Rust](https://dev.to/wadecodez/exploring-rust-for-native-ios-game-development-2bna)
- [ ] [aarch64-apple-ios-sim](https://doc.rust-lang.org/rustc/platform-support/aarch64-apple-ios-sim.html)

