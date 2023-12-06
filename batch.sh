
cargo run -- \
    --param ./sample \
    --output ./sample \
    batch \
    --challenge poseidon \
    -k 18 \
    --info sample/test.loadinfo.json \
    --name test
    --commits sample/batchinfo1.json

