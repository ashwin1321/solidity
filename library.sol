// SPDX-License-Identifier: Unlicensed


pragma solidity >=0.7.0;

library library_name{
    // uint public name;          // state variable banauna mildaina yesma

    // NOTE: we only define methods that is expected to be used again and again, and we just use this library whenever needed

    function add(uint num1, uint num2) public pure returns(uint){
        return num1+num2;
    }
}

contract main{
    
    // how to use library
    function call() public pure returns(uint){
        return library_name.add(2,3);                    // just write library_name.function_name()
    }

}