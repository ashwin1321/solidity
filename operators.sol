// SPDX-License-Identifier: Unlicensed

pragma solidity >=0.7.0;

contract operators {  

    // Arithmetic Operator (+,-,*,/,%)

    // Relational Operator ( ==, !=, >, <, >=, <= )

    // Logical Operator    ( &&, ||, ! )


    // Bitwise Operator 

    uint public a = 4;
    uint public b = 5;

    function get() public view returns(uint){
        return (a & b);
    }
    
    // 101 = 5, 100 = 4. Bitwise operation is done on every bit and for every bit if two adjacent bits are 1 sthe resulting bit is 1 else 0. so the result of above function is 4. ans 201 & 100 == 100


    // Bitwise AND "&"
    // OR "|"
    // XOR "^"
    // left shift "<<"
    // right shift ">>"
    // NOT "~"



    // Assignment Operator ( =, +=, -=, *=, /=, %= )


    // Conditional Operator  ( if condition true ? then A: else B )
}
