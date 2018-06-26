Docker image for compiling Rust to WebAssembly
=====

This container contains all tools needed for compiling Rust to WebAssembly.

For now, the image features the nightly version of Rust (which might be changed as soon as all tools become available on the stable branch). Furthermore, it features the new `wasm32-unknown-unknown` toolchain which is now the preferred way of compiling to WASM (without using Emscripten).

In addition, we ship `wasm-bindgen` (for creating JS bindings) and `wasm-gc` (smaller binaries and prevent bugs in the Rust toolchain) in this container.

For now, the image uses npm as a node package manager.

If you follow the [tutorial on writing Conway's Game of Life in WebAssembly with Rust](https://rustwasm.github.io/book/game-of-life/introduction.html) this container is exactly what you might want.

I personally use this container for my CI pipeline on GitLab but I put this Dockerfile on GitHub for discoverability. Feel free to contribute and improve the image! Pull requests are very appreciated ;)


### TODOs:
 - add `wasm-pack` (quite important to some people I guess)
 - replace `npm` with `yarn`
 - decrease image size (are there some nice approaches?)
