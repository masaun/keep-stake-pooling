pragma solidity ^0.5.17;

import { IERC20 } from "openzeppelin-solidity/contracts/token/ERC20/IERC20.sol";
import { SafeMath } from "openzeppelin-solidity/contracts/math/SafeMath.sol";

import { KeepToken } from "./keep-core/KeepToken.sol";
import { KeepStakePool } from "./KeepStakePool.sol";


/***
 * @notice - This is a smart contract to create a new Keep Stake Pool
 **/
contract KeepStakePoolFactory {
    uint currentKeepStakePoolId;  /// Current KeepStakePool ID
    address KEEP_TOKEN; 

    KeepToken public keepToken;

    constructor (KeepToken _keepToken) public {
        keepToken = _keepToken;

        KEEP_TOKEN = address(_keepToken);
    }


    /***
     * @notice - Create a new KeepStakePool
     **/
    function createKeepStakePool(KeepToken _keepToken) public returns (address _keepStakePool) {
        KeepStakePool keepStakePool = new KeepStakePool(_keepToken);
        return address(keepStakePool);
    }


}
