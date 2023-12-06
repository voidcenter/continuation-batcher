md5=6665F9A283043B54D02CB8F66B3F7EEB
tdir=../playground/zkwasm/cloud/batch/toy

cargo run --release -- -k 18 --function zkmain --wasm ../playground/zkwasm/cloud/batch/toy/zkmain.wasm single-prove --public 1:i64 2:i64 --private 1:i64
cp $md5/K18.params $tdir/
cp $md5/zkwasm.circuit.data $tdir/

cp $md5/zkwasm.0.transcript.data $tdir/
cp $md5/zkwasm.0.instance.data $tdir/

cargo run --release -- -k 18 --function zkmain --wasm ../playground/zkwasm/cloud/batch/toy/zkmain.wasm single-prove --public 2:i64 3:i64 --private 1:i64
cp $md5/zkwasm.0.transcript.data $tdir/zkwasm.1.transcript.data
cp $md5/zkwasm.0.instance.data $tdir/zkwasm.1.instance.data

cargo run --release -- -k 18 --function zkmain --wasm ../playground/zkwasm/cloud/batch/toy/zkmain.wasm single-prove --public 3:i64 4:i64 --private 1:i64
cp $md5/zkwasm.0.transcript.data $tdir/zkwasm.2.transcript.data
cp $md5/zkwasm.0.instance.data $tdir/zkwasm.2.instance.data

