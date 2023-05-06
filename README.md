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

* on the project directory to enable it.

```
rustup override set nightly 
```

```
mkdir .cargo
```

```
wget -o .cargo/config https://raw.githubusercontent.com/bevyengine/bevy/main/.cargo/config_fast_builds
```


## :a: Getting started

Now, getting some text as output is pretty cool, but better than that is to have a window open! So let's work on that. Let's remove all the contents of main.rs and replace them with the following:

```rust
use bevy::prelude::*;

fn main() {
    App::build().add_plugins(DefaultPlugins).run();
}
```

# References

- [ ] [Chess game in Rust using Bevy](https://caballerocoll.com/blog/bevy-chess-tutorial/)