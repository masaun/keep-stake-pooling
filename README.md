# Keep Stake Pooling

***
## 【Introduction of Keep Stake Pooling】
- This is a smart contract for the Keep Stake Pooling.
 
- Keep Stake Pooling is that:
  - allow smaller Keep owners to delegate a stake lower than the current minimum Keep stake. 
  - It can be combined with others to reach the current minimum stake and run a node. 
  - Contributions building on said work will also be accepted specifically reducing the min stake amount below 20k into the pool or making it non custodial.

&nbsp;

***

## 【Remarks】
- Solidity (solc) version: v0.5.17

- Solidity libraries
  - "@openzeppelin/upgrades": "^2.7.2"
  - "openzeppelin-solidity": "2.4.0"

&nbsp;

***

## 【Setup】
### ① Install modules
```
$ npm install
```

<br>

### ② Compile & migrate contracts (on Ropsten testnet)
```
$ npm run migrate:ropsten
```

<br>

### ③ Execute script
```
$ npm run script:ropsten
```

<br>

### ③ Execute test
- Test on the local
```
$ npm run test:local

(ganache-cli && truffle test ./test/test-local/* --network local)
```


&nbsp;

***

## 【References】
- Keep Network (Stack and Rewards, KeepToken, etc...)
  - keep-core contract: https://github.com/keep-network/keep-core/tree/master/solidity/contracts
  - Keep Token dashboard (on Ropsten): https://dashboard.test.keep.network/tokens/delegate#granted
    (Process Guide: https://medium.com/@ben_longstaff/a-beginners-quick-start-guide-to-staking-on-the-keep-network-testnet-using-digitalocean-5a74ca60adc3 )
  - Doc for staking: https://staking.keep.network/about-staking/staking-101
  - KeepToken fancet (on Ropsten): https://us-central1-keep-test-f3e0.cloudfunctions.net/keep-faucet-ropsten?account={YOUR WALLET ADDRESS}
  - GR8 Prize: https://gitcoin.co/issue/keep-network/tbtc.js/115/100024326

<br>


- Keep Network (tBTC)
  - Solidity API: https://docs.keep.network/tbtc/solidity/
  - Ropsten testnet / internal testnet: https://github.com/keep-network/tbtc-dapp#internal-testnet
