FROM rust

LABEL maintainer="Andreas Zimmerer"
LABEL version="1.0"
LABEL description="The Rust wasm32-unknown-unknown toolchain"

# install node.js (npm!)
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && apt-get install -y nodejs && rm -rf /var/lib/apt/lists/*

# enable rust nightly and enable the wasm32-unknown-unknown toolchain
RUN rustup update && rustup install nightly && rustup default nightly && rustup target add wasm32-unknown-unknown --toolchain nightly

# install additional wasm tools
RUN cargo +nightly install wasm-bindgen-cli && cargo +nightly install wasm-gc

