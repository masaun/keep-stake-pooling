pragma solidity ^0.5.17;

import { IERC20 } from "openzeppelin-solidity/contracts/token/ERC20/IERC20.sol";
import { SafeMath } from "openzeppelin-solidity/contracts/math/SafeMath.sol";

import { KeepToken } from "./keep-core/KeepToken.sol";


/***
 * @notice - This is a smart contract to create a new Keep Stake Pool
 **/
contract KeepStakePoolFactory {

    KeepToken public keepToken;

    address KEEP_TOKEN; 

    constructor (KeepToken _keepToken) public {
        keepToken = _keepToken;

        KEEP_TOKEN = address(_keepToken);
    }

}
