// SPDX-License-Identifier: Unlicensed

pragma solidity >=0.7.0;

contract constructors {

    address public owner;
    uint public balance;

    // constructor ko definition ni chaiyo bhane ta padhna chodda hunxa bro. No if and but.

    constructor(uint _balance){
        owner = msg.sender;
        balance = _balance;
    }
} 

// contract derived is constructors(11) {            // yesari constructor ko value inherit garda ni dina milyo Or,

    contract derived is constructors { 
        constructor() constructors(20){           // Or, yesari ni set garna milyo

        }

}