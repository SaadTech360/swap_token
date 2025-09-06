// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.29;

import { IERC20 } from"./interfaces/IERC20.sol";
import { Events } from "./lib/events.sol";

contract SwapTokens{
    IERC20 tokenA;
    IERC20 tokenB;

    tokenA = IERC20(targetContract);
    tokenB = IERC20(targetContract);

    mapping(address => uint256) public swappedBalance;

    function swap_token_a(string _tokenAsymbol,string _tokenBsymbol,uint256 _tokenUnit){
    require(tokenA.symbol == _tokenAsymbol,"Invalid token A symbol");
    require(tokenA.symbol == _tokenBsymbol,"Invalid token B symbol");
    require(tokenA.balanceOf(msg.sender) > 0,"insuffient Token A Balance to swap");
    require(tokenA.balanceOf(msg.sender) > 0,"insuffient Token B Balance to swap");
    require(_tokenUnit > 0, "cant swap zero unit");

    require(token.transfer(msg.sender, address(this), _tokenUnit), "Transfer failed");
    uint256 token_a_value = tokenA.getTokenValue();
    uint256 token_b_value = tokenA.getTokenValue();

    uint256 qt = token_b_value / _tokenUnit;
    uint256 swap_value = qt / token_a_value;
     swappedBalance[msg.sender] += swap_value;
    
    emit Events.Transfer(msg.sender,address(this),_tokenUnit)
}

    function swap_token_b(string _tokenAsymbol,string _tokenBsymbol,uint256 _tokenUnit){
    require(tokenA.symbol == _tokenAsymbol,"Invalid token A symbol");
    require(tokenA.symbol == _tokenBsymbol,"Invalid token B symbol");
    require(tokenA.balanceOf(msg.sender) > 0,"insuffient Token A Balance to swap");
    require(tokenA.balanceOf(msg.sender) > 0,"insuffient Token B Balance to swap");
    require(_tokenUnit > 0, "cant swap zero unit");
    require(token.transfer(msg.sender, address(this), _tokenUnit), "Transfer failed");

    uint256 token_a_value = tokenA.getTokenValue();
    uint256 token_b_value = tokenA.getTokenValue();

    uint256 qt = token_a_value / _tokenUnit;
    uint256 swap_value = qt / token_b_value;
     swappedBalance[msg.sender] += swap_value;
    
    emit Events.Transfer(msg.sender,address(this),_tokenUnit)
}


    function withdrawToken(uint256 amount) public {
        require(amount > 0, "Amount must be greater than zero");
        require(swappedBalance[msg.sender] >= amount, "Insufficient token balance");
        
        swappedBalance[msg.sender] -= amount;
        token.balances[msg.sender] += amount;
        
        emit Events.WithdrewTokens(msg.sender,_tokenUnit);
    }

}
