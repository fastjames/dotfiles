#!/bin/sh

# Rust and cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# set default version
rustup default nightly

# add componenst
rustup component add rustfmt clippy

# add wasm target
rustup target add wasm32-unknown-unknown --toolchain nightly
cargo +nightly install wasm-bindgen-cli
