pragma solidity ^0.5.17;

import { IERC20 } from "openzeppelin-solidity/contracts/token/ERC20/IERC20.sol";
import { SafeMath } from "openzeppelin-solidity/contracts/math/SafeMath.sol";

import { KeepToken } from "./keep-core/KeepToken.sol";

/// Stake-related contracts
import { StakeDelegatable } from "./keep-core/StakeDelegatable.sol";
import { TokenStaking } from "./keep-core/TokenStaking.sol";
import { TokenStakingEscrow } from "./keep-core/TokenStakingEscrow.sol";
import { TokenGrant } from "./keep-core/TokenGrant.sol";
import { TokenGrantStake } from "./keep-core/TokenGrantStake.sol";


/***
 * @notice - This is a smart contract to allow smaller Keep owners to delegate a stake lower than the current minimum Keep stake
 * @notice - Minimum Keep stake amount is 70,000 KEEP.
 **/
contract KeepStakePool {

    KeepToken public keepToken;

    address KEEP_TOKEN; 
    uint MINIMUM_STAKE_KEEP_AMOUNT = 70000;  /// [Note]: Minimum Keep stake amount is 70,000 KEEP

    constructor (KeepToken _keepToken) public {
        keepToken = _keepToken;

        KEEP_TOKEN = address(_keepToken);
    }

    /***
     * @notice - Small KeepTokens owners delegate a stake into pool
     **/
    function stakeKeepTokenIntoPool(uint keepTokenStakeAmount) public returns (bool) {
        keepToken.transferFrom(msg.sender, address(this), keepTokenStakeAmount);
    }


    /***
     * @notice - Pooled KeepTokens are delegate staked into keep-core.
     **/
    function stakePooledKeepTokenAmountIntoCore() public returns (bool) {
        uint pooledKeepTokenBalance = keepToken.balanceOf(address(this));

        /// [Todo]: Stake pooled keepToken amount into keep-core contract
    }


}
