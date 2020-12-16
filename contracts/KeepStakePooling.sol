pragma solidity ^0.5.17;

import { IERC20 } from "openzeppelin-solidity/contracts/token/ERC20/IERC20.sol";
import { SafeMath } from "openzeppelin-solidity/contracts/math/SafeMath.sol";

import { KeepToken } from "./keep-core/KeepToken.sol";


contract KeepStakePooling {

    KeepToken public keepToken;

    address KEEP_TOKEN; 

    constructor (KeepToken _keepToken) public {
        keepToken = _keepToken;

        KEEP_TOKEN = address(_keepToken);
    }

    function something() public returns (bool) {}

}
