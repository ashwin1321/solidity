// holds data in key value pair, same as object in javascript or dictionary in python

// SPDX-License-Identifier: Unlicensed


pragma solidity >=0.7.0;

contract mappings{

    mapping(address => uint) public balances;            // address bhane datatye key bho ani balances value
    function setBalance(uint balance) public{
        balances[msg.sender] = balance;
    }
}