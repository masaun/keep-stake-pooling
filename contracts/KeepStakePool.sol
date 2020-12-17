pragma solidity ^0.5.17;

import { IERC20 } from "openzeppelin-solidity/contracts/token/ERC20/IERC20.sol";
import { SafeMath } from "openzeppelin-solidity/contracts/math/SafeMath.sol";

import { KeepToken } from "./keep-core/KeepToken.sol";

/// Stake-related contracts from keep-core
/// @notice A base contract to allow stake delegation for staking contracts.
import { StakeDelegatable } from "./keep-core/StakeDelegatable.sol";

/// @notice A token staking contract for a specified standard ERC20Burnable token.
import { TokenStaking } from "./keep-core/TokenStaking.sol";

/// @notice Escrow lets the staking contract to deposit undelegated, granted
import { TokenStakingEscrow } from "./keep-core/TokenStakingEscrow.sol";

/// @notice A token grant contract for a specified standard ERC20Burnable token.
import { TokenGrant } from "./keep-core/TokenGrant.sol";
import { TokenGrantStake } from "./keep-core/TokenGrantStake.sol";

/// @notice A managed grant acts as the grantee towards the token grant contract,
import { ManagedGrant } from "./keep-core/ManagedGrant.sol";

/// @notice A staking policy defines the function `getStakeableAmount`
import { GrantStakingPolicy } from "./keep-core/GrantStakingPolicy.sol";


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
    function stakePooledKeepTokenAmountIntoCore(
        ManagedGrant _managedGrant,
        address _stakingContract,
        uint256 _amount,
        bytes memory _extraData
    ) public returns (bool) {
        /// Create a ManagedGrant contract instance.
        /// [Note]: ManagedGrant contract is created by ManagedGrantFactory contract
        ManagedGrant managedGrant = _managedGrant;

        /// Get KeepTokens balance of this contract
        uint pooledKeepTokenBalance = keepToken.balanceOf(address(this));

        /// [Todo]: Stake pooled keepToken amount into keep-core contract
        managedGrant.stake(_stakingContract, _amount, _extraData);
    }


}
