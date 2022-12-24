// SPDX-License-Identifier: Unlicensed

pragma solidity >=0.7.0;

contract variables {

    // state variables  ==  variable whose values are permanently stored in a contract storage
    // local variables == variables whose value is present till function is executing 
    // global variables == special variable in global namespace used to get information about the blockchain


    // NOTE: Solidity is statically typed language, so state or local variables needs to be specified during declaration. 
    // NOTE: THERE IS NO CONCEPT OF UNDEFINED OR NULL


    uint public val = 4;                  // state variables

    function add() public pure returns(uint){

        uint val2 = 3;                   // local variables  
        return val2;
    }

    function global() public view returns(uint){

        // https://docs.soliditylang.org/en/v0.8.17/units-and-global-variables.html
        // NOTE: global variable k k xa herna mathi ko link ma janu hola. Dhanyabaad!
         
        //  return block.timestamp;   // current time dinxa
        // return msg.sender;            // sender ko address dinxa, returns ma address rakhne yesma
        return msg.sender.balance;
    }

} 