pragma solidity ^0.5.17;

import { IERC20 } from "openzeppelin-solidity/contracts/token/ERC20/IERC20.sol";
import { SafeMath } from "openzeppelin-solidity/contracts/math/SafeMath.sol";

import { KeepToken } from "./keep-core/KeepToken.sol";


/***
 * @notice - This is a smart contract to allow smaller Keep owners to delegate a stake lower than the current minimum Keep stake
 * @notice - Minimum Keep stake amount is 70,000 KEEP.
 **/
contract KeepStakePooling {

    KeepToken public keepToken;

    address KEEP_TOKEN; 
    uint MINIMUM_STAKE_KEEP_AMOUNT = 70000;  /// [Note]: Minimum Keep stake amount is 70,000 KEEP

    constructor (KeepToken _keepToken) public {
        keepToken = _keepToken;

        KEEP_TOKEN = address(_keepToken);
    }

    function something() public returns (bool) {}

}
