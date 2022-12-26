// SPDX-License-Identifier: Unlicensed

pragma solidity >=0.7.0;

contract Payable {

    // ether pathaune ra paune sajilo tarika, aaja nai aapnaunu hos. LOL

    // we use keyword payable to specify that an address or a function can recieve or transfer Ether.

    address payable public owner;

    constructor(){
        owner = payable( msg.sender);
    }
     
    function transferEth() payable public{
        owner.transfer(msg.value);

    }
}
