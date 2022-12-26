// SPDX-License-Identifier: Unlicensed

pragma solidity >=0.7.0;

contract events {

// Events are inheritable member of a contract, An event is emitted, it stores arguments passed in transaction logs. 
// These logs are stored in blockchain and are accessible using address of the contract till the contract is present on the blockchain. 
// An event generated is not accessible from within contracts, not even the one which have created and emitted them.
    
    event transfer(                                     // creating the event
        address indexed _from, address _to, uint _amount);

    function trans(address to, uint amount) public {
        emit transfer(msg.sender, to, amount);             // event banayera matra hunxa ta bro, emit ni garnu paryo ni ta
    }


    // frontend bata access hunxa event haru chai

}
