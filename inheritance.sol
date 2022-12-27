// SPDX-License-Identifier: Unlicensed

import "hashing.sol";          // yeasri aru file import ni garna milxa locally

// import "http/asgasgagagagagaa"   // external file ni import garna milxa github bata

pragma solidity >=0.7.0;

contract Base{
    
    uint internal num;

    constructor (uint _num){
        num = _num;
    }
}

// contract Child1 is Base(3){                 // constructor ko value yesari nai dina ni milxa OR,
contract Child1 is Base{

    constructor () Base(5){                    // OR, yesari ni dina milxa

    }

    function getVal() public view returns(uint){
        return num;
    }
}


contract child2 is hashing{            // hash bhanne file import gareko xa, ani tei file bhitra ko contract ko naam hashing ho la


}

contract child3 is Base(3), hashing{           // yesari multiple inheritance garna milxa

}
