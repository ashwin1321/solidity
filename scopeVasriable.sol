// SCOPE VARIABLES

    // public  -- can be accessed internally as well as via message
    // Internal -- can be accessed only internally from the current contract or contract deriving from it without using this.
    // Private -- can be accessed only internally from current contract they are defined not in the derived contract from it.

// SPDX-License-Identifier: Unlicensed

pragma solidity >=0.7.0;

contract scopeVariables {      
    
    uint public val = 4;                // public ho tei bhara deploy garda directly call garna milxa
    function get() public view returns(uint){
        return val3;           // internally in the program call hunxa yesari
    }
    

    uint internal val2 = 5;             // internally and derived calss lai matra access hunxa
    uint private val3 = 1;              // yo aba yei contract bhitra matra access hunxa
} 

contract scopeVariables2 is scopeVariables {              // inherit gareko ho la. multiple inherit garna , le seperate garne

     function get2() public view returns(uint){
        return val2;           // derived class le access garna payo internal variable lai
    }
}
