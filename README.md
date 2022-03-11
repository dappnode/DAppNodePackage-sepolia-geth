# DAppNode package _Sepolia_ (Geth)
[![DAppNodeStore Available](https://img.shields.io/badge/DAppNodeStore-Available-brightgreen.svg)](http://my.dappnode/#/installer/%2Fipfs%2FQmWz6qUN8jTqxvnVKMwEjTXdwQaYLiwhMFikfZjBaABEWP)
[![Otterscan Sepolia](https://img.shields.io/badge/Otterscan-Sepolia-blue)](https://sepolia.otterscan.io/)

![Avatar](avatar-sepolia-geth.png)

Sepolia Testnet is a new, official Ethereum proof-of-work testnet replacing Ropsten and Morden.

More information about the official Ethereum testnets can be found here: [ethereum/pm#460](https://github.com/ethereum/pm/issues/460)

### Installation

Install without package manager by looking up the package IPFS hash:
* http://my.dappnode/#/installer/%2Fipfs%2FQmWz6qUN8jTqxvnVKMwEjTXdwQaYLiwhMFikfZjBaABEWP (WIFI)
* http://dappnode.local/#/installer/%2Fipfs%2FQmWz6qUN8jTqxvnVKMwEjTXdwQaYLiwhMFikfZjBaABEWP (LAN)

Signed IPFS hash for verification:
```
DNP (DAppNode Package) built and uploaded
Release hash : /ipfs/QmWz6qUN8jTqxvnVKMwEjTXdwQaYLiwhMFikfZjBaABEWP
http://my.dappnode/#/installer/%2Fipfs%2FQmWz6qUN8jTqxvnVKMwEjTXdwQaYLiwhMFikfZjBaABEWP
```

### APIs

The following JSON-RPC APIs are enabled by default:
* `http://sepolia-geth.dappnode:8545`
* `ws://sepolia-geth.dappnode:8546`

To expose these publicly, go to the package's network configuration and create the following entries:
* Subdomain: `sepolia-geth`, Port: `8545`
* Subdomain: `sepolia-geth-ws`, Port: `8546`

### Manteinance

|      Updated       |    Champion/s    |
| :----------------: | :--------------: |
| :heavy_check_mark: | @q9f |

### License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](LICENSE) file for details
