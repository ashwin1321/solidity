// SPDX-License-Identifier: Unlicensed

pragma solidity >=0.7.0;

contract errorHandling{


    // assert, require, revert

    // require ->> If condition is not met, this method reverts to the initial state and the funds and gas fee are refunded. It is used for errors in external components

    // assert ->> This is used for any internal errors. yesle chai gas fee haru khaidinxa

    // revert ->> This method aborts the execution and revert any changes done to the state. remaining gas is refunded

    address public owner;
    uint public count;

    constructor(){
        owner = msg.sender;
    }

    function call() public {
        count++ ;
        // require(msg.sender == owner, "not a valid owner");          // owner le matra yo function call garna pauxa, jasle yo contract deploy gareko xa tesle matra
        // // owner valid nabhaye tyo error message aauxa ani func, gas fee refund gardinxa
         

        // assert (msg.sender == owner);
        
        if(msg.sender != owner){
            revert("caller is not owner");
        }
    }

 }