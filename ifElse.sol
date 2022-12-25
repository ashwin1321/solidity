// SPDX-License-Identifier: Unlicensed


pragma solidity >=0.7.0;

contract ifEsle{
    
    function get() public pure returns(uint){

        uint a = 5;

        if (a==2){
            return 1;
        }
        return 0;
    }


}

