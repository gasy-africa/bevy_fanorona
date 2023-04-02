# Install

:a: [Rustup: the Rust installer and version management tool](https://www.rust-lang.org/learn/get-started)


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

  /Users/valiha/.rustup

This can be modified with the RUSTUP_HOME environment variable.

The Cargo home directory is located at:

  /Users/valiha/.cargo

This can be modified with the CARGO_HOME environment variable.

The cargo, rustc, rustup and other commands will be added to
Cargo's bin directory, located at:

  /Users/valiha/.cargo/bin

This path will then be added to your PATH environment variable by
modifying the profile files located at:

  /Users/valiha/.profile
  /Users/valiha/.zshenv

You can uninstall at any time with rustup self uninstall and
these changes will be reverted.

Current installation options:


   default host triple: x86_64-apple-darwin
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
info: default host triple is x86_64-apple-darwin
warning: Updating existing toolchain, profile choice will be ignored
info: syncing channel updates for 'stable-x86_64-apple-darwin'
info: default toolchain set to 'stable-x86_64-apple-darwin'

  stable-x86_64-apple-darwin unchanged - rustc 1.68.2 (9eb3afe9e 2023-03-27)


Rust is installed now. Great!

To get started you may need to restart your current shell.
This would reload your PATH environment variable to include
Cargo's bin directory ($HOME/.cargo/bin).

To configure your current shell, run:
source "$HOME/.cargo/env"
</pre>
