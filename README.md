# Libra-The-New-Blockchain
Projects related to Libra Setup on Debian OS using Docker

##Setup Requirements
1. Linux or Mac OS 
2. Docker CE 

I have consolidated the setup requirements for Libra into a docker image , to avoid the hassle of setting up the configuration in the local.

Pull the docker image from the dockerhub

-> docker pull mysticrenji/libradocker:v1

The image will be downloaded to your machine within few minutes depending upon the internet connection. The image size is 2.4 GB. After the image has been downloaded to your local. Lets runs the container, this requirement few parameters to be included while running the container.

-> docker run -it <Image ID> ./scripts/cli/start_cli_testnet.sh

The running would take 15-20 minutes of your time depending on the internet connectivity, as it needs to build the crate packages(Rust)

After building , it will go into "libra%" CLI connecting to Libra Testnet (Dev environment)

## Quick Commands
### Account Creation

libra% account create<br>
Creating/retrieving next account from wallet <br>
Created/retrieved account #0 address 19bae6df765efbd53296bc44292bfee1f50d451db551d640c6c5d398fa9e3fde

### Check the balance
libra% query the balance <index number or hash address> <br>
libra% query balance 513f254b70324b754f257f40357fd71897adebe45510199486ab226efbd4011e
  
### Transfer Coins
libra% <account1> <account2> <coin number> <br>
libra% 19bae6df765efbd53296bc44292bfee1f50d451db551d640c6c5d398fa9e3fde 513f254b70324b754f257f40357fd71897adebe45510199486ab226efbd4011e 500

### Quey transactions just submittted
libra% query txn_acc_seq <account1> <account1> true

### The Blocking Transfer Command
libra% transferb <account1> <account2> 500
  
