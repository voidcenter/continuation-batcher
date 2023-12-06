
use wasm_bindgen::prelude::*;

use zkwasm_rust_sdk::{
    wasm_input,
    // wasm_output,
    require,
};


#[wasm_bindgen]
pub fn zkmain() {
    unsafe {
        let x = wasm_input(1);
        let a = wasm_input(0);
        let x1 = wasm_input(1);
        require(x + a == x1);
    }
}

