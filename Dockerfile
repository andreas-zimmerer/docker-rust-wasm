FROM rust

LABEL maintainer="Andreas Zimmerer"
LABEL version="0.1"
LABEL description="Docker image with Rust and the wasm32-unknown-unknown toolchain"

# install node.js (npm!)
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs && rm -rf /var/lib/apt/lists/*

# enable rust nightly
RUN rustup update && rustup install nightly && rustup default nightly

# add wasm32-unknown-unknown toolchain
RUN rustup target add wasm32-unknown-unknown --toolchain nightly

# install wasm-bindgen
RUN cargo +nightly install wasm-bindgen-cli

# install additional wasm tools
RUN cargo +nightly install wasm-gc

