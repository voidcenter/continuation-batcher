build:
	wasm-pack build --release --out-name toy.wasm --target web --out-dir pkg 
	wasm-opt -Oz -o pkg/opt-toy.wasm pkg/toy.wasm
	cp pkg/opt-toy.wasm ../batch/toy/zkmain.wasm

trace:
	wasm-interp pkg/output.wasm --run-all-exports  --trace > trace.log
	wc -l trace.log

clean:
	rm -rf pkg

