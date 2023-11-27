
echo  -e  "\e[1;33m===============================SEJA-BENVINDO =============================================V.001===================\e[0m"
sleep 8s
echo  -e  "\e[1;33m===============================INICIANDO EM 5 SEGUNDOS============================================================\e[0m"
sleep 5s
sudo apt update && upgrade -y
echo  -e  "\e[1;33m================================ BUILD ESSENTIAL===============================================================\e[0m"
sleep 7s
sudo apt install build-essential
echo  -e  "\e[1;33m================================INSTALANDO RUST===============================================================\e[0m"
sleep 7s
sudo apt install --assume-yes git clang curl libssl-dev protobuf-compiler
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source ~/.cargo/env
rustup default stable
rustup update
rustup update nightly
rustup target add wasm32-unknown-unknown --toolchain nightly
sleep 7s
echo  -e  "\e[1;33m================================INSTALACAO COM SUCESSO==========================================================\e[0m"
sleep 7s

echo  -e  "\e[1;33m================================INSTALACAO COM AVAIL NODE==========================================================\e[0m"

git clone https://github.com/availproject/avail.git
sleep 2s
cd avail
sleep 2s
mkdir -p output
sleep 2s
mkdir -p data
sleep 2s
git checkout v1.8.0.2
sleep 2s
cargo run --locked --release -- --chain goldberg --validator -d ./output 

