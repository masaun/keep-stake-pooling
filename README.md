# Keep Stake Pooling

***
## 【Introduction of Keep Stake Pooling】
- This is a smart contract for the Keep Stake Pooling.
 
- Keep Stake Pooling is that:
  - set up a system to allow smaller Keep owners to delegate a stake lower than the current minimum Keep stake. 
  - It can be combined with others to reach the current minimum stake and run a node. 
  - Contributions building on said work will also be accepted specifically reducing the min stake amount below 20k into the pool or making it non custodial.

&nbsp;

***

## 【Remarks】
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

### ③ Execute script (it's instead of testing)
```
$ npm run script:ropsten
```


&nbsp;

***

## 【References】
- Keep Network (Stack and Rewards, KeepToken, etc...)
  - keep-core contract: https://github.com/keep-network/keep-core/tree/master/solidity/contracts
  - Keep Token dashboard (on Ropsten): https://dashboard.test.keep.network/tokens/delegate#granted
  - GR8 Prize: https://gitcoin.co/issue/keep-network/tbtc.js/115/100024326

<br>


- Keep Network (tBTC)
  - Solidity API: https://docs.keep.network/tbtc/solidity/
  - Ropsten testnet / internal testnet: https://github.com/keep-network/tbtc-dapp#internal-testnet
