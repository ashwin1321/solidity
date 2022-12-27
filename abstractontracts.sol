// SPDX-License-Identifier: Unlicensed


pragma solidity >=0.7.0;

abstract contract base{

    uint public num;

    function call() public pure returns(uint){
        return 1;
    }

    function abstractFunction() public pure virtual returns(uint);         // aba chaine derived class le yo afnai tarika le implement garna sakxa
    
}

contract child is base{

    function abstractFunction() public pure override returns(uint){
        return 69;
    }
}