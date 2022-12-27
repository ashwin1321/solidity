// SPDX-License-Identifier: Unlicensed


pragma solidity >=0.7.0;

contract a{

    function add(uint num1, uint num2) public pure returns(uint){
        return num1+num2;
    }
    
    function add1(uint num1, uint num2) internal pure returns(uint){ 
        return num1+num2;
    }

    function add2(uint num1, uint num2) private pure returns(uint){
        return num1+num2;
    }

    function add3(uint num1, uint num2) external pure returns(uint){
        return num1+num2;
    }

}

contract b is a{

    function call() public pure returns(uint){
        return add(4,3);
    }

    function call1() public pure returns(uint){
        return add1(4,3);
    }

    // private method call garauna mildaina derived class bata pani ez

    // external chai within contract or derived contract bata call garna mildaina raixa okay :curiousEmoji:
}