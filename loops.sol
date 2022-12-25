// SPDX-License-Identifier: Unlicensed


pragma solidity >=0.7.0;

contract loops{
    
        uint public a = 2;
        uint public b = 5;
    function get() public {

        // do {
        //     a +=1;
        // }
        // while (a<b);

        for (uint i=0; i < 3; i++){
            a +=1;
        }
}
}