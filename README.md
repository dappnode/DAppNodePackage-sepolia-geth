# DAppNode Package Sepolia Geth

[![DAppNodeStore Available](https://img.shields.io/badge/DAppNodeStore-Available-brightgreen.svg)](http://my.dappnode/#/installer/%2Fipfs%2FQmWz6qUN8jTqxvnVKMwEjTXdwQaYLiwhMFikfZjBaABEWP)
[![Otterscan Sepolia](https://img.shields.io/badge/Otterscan-Sepolia-blue)](https://sepolia.otterscan.io/)

![Avatar](avatar-sepolia-geth.png)

Sepolia was originally a proof-of-authority testnet created by Ethereum core developers in October 2021. It transitioned to a proof-of-stake consensus mechanism after Ropsten testnet reached a Terminal Total Difficulty (TTD) of 50000000000000000.

Testnets are designed to mimic Ethereum's mainnet environment, and Sepolia was created to simulate harsh network conditions with shorter block times for faster transaction confirmation times.

Unlike other testnets like Goerli, Sepolia's total number of testnet tokens is uncapped, reducing the likelihood of testnet token scarcity for developers.

### APIs

The following JSON-RPC APIs are enabled and available over VPN or to other packages on your Dappnode (but not exposed to the open Internet) by default:
* `http://geth.sepolia-geth.dappnode:8545`
* `ws://geth.sepolia-geth.dappnode:8546`

To expose either publicly to the open internet using HTTPS to secure your API connection with TLS, go to the HTTPS Portal and Toggle the RPC endpoint you want to expose, WebSocket or HTTP and it will generate a link for you.  Only one of these 2 predefined endpoints can be exposed at a time.

### Manteinance

|      Updated       |    Champion/s    |
| :----------------: | :--------------: |
| :heavy_check_mark: | @q9f |

### License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](LICENSE) file for details
