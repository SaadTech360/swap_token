// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.29;


library Events {
    event Transfer(address indexed sender, address indexed reciepient, uint256 indexed amount);
    event Approve(address indexed owner, address indexed spender, uint256 amount);
    event TransferFrom(address indexed owner, address indexed spender, uint256 amount);
    event WithdrewTokens(address indexed user, uint256 amount);
}