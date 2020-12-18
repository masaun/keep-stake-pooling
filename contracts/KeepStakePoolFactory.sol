pragma solidity ^0.5.17;

import { IERC20 } from "openzeppelin-solidity/contracts/token/ERC20/IERC20.sol";
import { SafeMath } from "openzeppelin-solidity/contracts/math/SafeMath.sol";

import { KeepToken } from "./keep-core/KeepToken.sol";
import { TokenStaking } from "./keep-core/TokenStaking.sol";
import { BeaconRewards } from "./keep-core/BeaconRewards.sol";

import { KeepStakePool } from "./KeepStakePool.sol";


/***
 * @notice - This is a smart contract to create a new Keep Stake Pool
 **/
contract KeepStakePoolFactory {
    using SafeMath for uint;

    uint public currentKeepStakePoolId;  /// Current KeepStakePool ID

    address KEEP_TOKEN; 

    KeepToken public keepToken;
    TokenStaking public tokenStaking;
    BeaconRewards public beaconRewards;

    mapping (uint => address) keepStakePools;  /// [Key]: KeepStakePool ID -> KeepStakePool contract address

    constructor (KeepToken _keepToken, TokenStaking _tokenStaking, BeaconRewards _beaconRewards) public {
        keepToken = _keepToken;
        tokenStaking = _tokenStaking;
        beaconRewards = _beaconRewards;

        KEEP_TOKEN = address(_keepToken);
    }


    /***
     * @notice - Create a new KeepStakePool
     **/
    function createKeepStakePool() public returns (uint newKeepStakePoolId, address newKeepStakePool) {
        /// Create a new KeepStakePool
        KeepStakePool keepStakePool = new KeepStakePool(keepToken, tokenStaking, beaconRewards);

        /// Give a keepStakePoolId to each keepStakePool
        uint newKeepStakePoolId = getNextKeepStakePoolId();
        currentKeepStakePoolId++;

        /// Save a pair that are keepStakePoolId and KeepStakePool
        keepStakePools[newKeepStakePoolId] = address(keepStakePool);

        return (newKeepStakePoolId, address(keepStakePool));
    }


    ///------------------------------------------------------------
    /// Private functions
    ///------------------------------------------------------------
    function getNextKeepStakePoolId() private view returns (uint nextKeepStakePoolId) {
        return currentKeepStakePoolId.add(1);
    }

}
