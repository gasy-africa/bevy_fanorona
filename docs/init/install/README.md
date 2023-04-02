# :construction: Install

## :a: [Rustup: the Rust installer and version management tool](https://www.rust-lang.org/learn/get-started)

:bulb: Installing using the convenient script allows the usage of `rustup` tool.

```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
> Outputs :
<pre>
info: downloading installer

Welcome to Rust!

This will download and install the official compiler for the Rust
programming language, and its package manager, Cargo.

Rustup metadata and toolchains will be installed into the Rustup
home directory, located at:

  /Users/u0000000021/.rustup

This can be modified with the RUSTUP_HOME environment variable.

The Cargo home directory is located at:

  /Users/u0000000021/.cargo

This can be modified with the CARGO_HOME environment variable.

The cargo, rustc, rustup and other commands will be added to
Cargo's bin directory, located at:

  /Users/u0000000021/.cargo/bin

This path will then be added to your PATH environment variable by
modifying the profile files located at:

  /Users/u0000000021/.profile
  /Users/u0000000021/.bash_profile
  /Users/u0000000021/.bashrc
  /Users/u0000000021/.zshenv

You can uninstall at any time with rustup self uninstall and
these changes will be reverted.

Current installation options:


   default host triple: aarch64-apple-darwin
     default toolchain: stable (default)
               profile: default
  modify PATH variable: yes

1) Proceed with installation (default)
2) Customize installation
3) Cancel installation
</pre>

```
>1
```
> Outputs :
<pre>

info: profile set to 'default'
info: default host triple is aarch64-apple-darwin
warning: Updating existing toolchain, profile choice will be ignored
info: syncing channel updates for 'stable-aarch64-apple-darwin'
info: latest update on 2023-03-28, rust version 1.68.2 (9eb3afe9e 2023-03-27)
info: downloading component 'rust-std' for 'aarch64-apple-ios-sim'
info: downloading component 'rust-std' for 'x86_64-apple-ios'
info: downloading component 'rust-std' for 'aarch64-apple-ios'
info: downloading component 'cargo'
info: downloading component 'clippy'
info: downloading component 'rust-std'
info: downloading component 'rustc'
info: downloading component 'rustfmt'
info: removing previous version of component 'rust-std' for 'aarch64-apple-ios-sim'
info: removing previous version of component 'rust-std' for 'x86_64-apple-ios'
info: removing previous version of component 'rust-std' for 'aarch64-apple-ios'
info: removing previous version of component 'cargo'
info: removing previous version of component 'clippy'
info: removing previous version of component 'rust-std'
info: removing previous version of component 'rustc'
info: removing previous version of component 'rustfmt'
info: installing component 'rust-std' for 'aarch64-apple-ios-sim'
 26.5 MiB /  26.5 MiB (100 %)  19.5 MiB/s in  1s ETA:  0s
info: installing component 'rust-std' for 'x86_64-apple-ios'
 27.4 MiB /  27.4 MiB (100 %)  19.4 MiB/s in  1s ETA:  0s
info: installing component 'rust-std' for 'aarch64-apple-ios'
 26.6 MiB /  26.6 MiB (100 %)  19.1 MiB/s in  1s ETA:  0s
info: installing component 'cargo'
info: installing component 'clippy'
info: installing component 'rust-std'
 27.5 MiB /  27.5 MiB (100 %)  19.0 MiB/s in  1s ETA:  0s
info: installing component 'rustc'
 55.1 MiB /  55.1 MiB (100 %)  21.5 MiB/s in  2s ETA:  0s
info: installing component 'rustfmt'
info: default toolchain set to 'stable-aarch64-apple-darwin'

  stable-aarch64-apple-darwin updated - rustc 1.68.2 (9eb3afe9e 2023-03-27) (from rustc 1.56.1 (59eed8a2a 2021-11-01))


Rust is installed now. Great!

To get started you may need to restart your current shell.
This would reload your PATH environment variable to include
Cargo's bin directory ($HOME/.cargo/bin).

To configure your current shell, run:
source "$HOME/.cargo/env"
</pre>

## :b: Versions

```
cargo --version
```
> cargo 1.68.0 (115f34552 2023-02-26)

```
rustc --version
```
> rustc 1.68.1 (8460ca823 2023-03-20) (built from a source tarball)

