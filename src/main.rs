use bevy::{
    prelude::*,
    // window::*,
};

fn main() {

    let mut app = App::new();
    app
        // Main window
        .insert_resource(WindowDescriptor {
            title: "Libra City".to_string(),
            ..Default::default()
        });

    // Only enable MSAA on non-web platforms
    #[cfg(not(target_arch = "wasm32"))]
    app.insert_resource(Msaa { samples: 4 });

    app
        // Default plugins
        .add_plugins(DefaultPlugins);

    app.run();
}

