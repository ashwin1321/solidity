// SPDX-License-Identifier: Unlicensed

pragma solidity >=0.7.0;

contract functionModifier {

    // used to modify the behaviour of a function. For example, to add a prerequisite to a function.

    address public owner;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner{
        require(msg.sender == owner, "invalid owner");
        _;                                // logic k k ho sab lekhisake paxi last ma yo _; dine hai modifier banauda
    }

    function sendMoney() public onlyOwner{
        // multiple functions ma require garera error handle garnu bhanda eauta modifier banayera yesari mathi jastai onlyOwner lekhdyo bhane sakyo ez


    }
}
