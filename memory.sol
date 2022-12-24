// SPDX-License-Identifier: Unlicensed

pragma solidity >=0.7.0;

contract scopeVariables {      
    
    uint public val = 4; 

    function get() public pure returns(string memory){                       // string haru return garda data location memory dinu parxa unlike uint
        return "test";           
    }

    function name(string memory name) public pure returns(string memory){             // parameter rekhda ni memory bhanera lekhne laa, tara uint type ko parameter hunxa bhane nadida ni hunxa la
        return name;
        
    }
} 
 