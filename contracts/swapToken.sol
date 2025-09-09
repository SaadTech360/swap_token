// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {IERC20} from "./interfaces/IERC20.sol";

contract SwapTokens {
    address public tokenA;
    address public tokenB;
    address public owner;

    uint public rate = 3; 

    constructor(address _tokenA, address _tokenB) {
        tokenA = _tokenA;
        tokenB = _tokenB;
        owner = msg.sender;
    }

    function swapAforB(uint amountA) external {
        IERC20(tokenA).transferFrom(msg.sender, address(this), amountA);
        uint amountB = amountA * rate;
        IERC20(tokenB).transfer(msg.sender, amountB);
    }

    function swapBforA(uint amountB) external {
        IERC20(tokenB).transferFrom(msg.sender, address(this), amountB);
        uint amountA = amountB / rate;
        IERC20(tokenA).transfer(msg.sender, amountA);
    }
}