//SPDX-License-Identifier: Unlicensed

pragma solidity >=0.5.0;

contract Lottery{

    address public manager;
    address payable[] public participants;

    constructor(){
        manager = msg.sender;           // manager ko address ho. Jasle deploy garyo tei manager in this case
    } 

    // participants involving in lottery through payment
    receive() external payable {        // special function. Can be used only once in a contract
        require(msg.value== 2 ether, "Only 2 ethers is allowed to transfer at once...");
        participants.push(payable(msg.sender));
    }

    // check the total collected amount
    function getBalance() public view returns(uint)
    {
        require(msg.sender == manager, "only manager has the access to view total balance.....");
        return address(this).balance;
    }

    // selecting random participants
    function random() public view returns(uint){
        return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, participants.length)));     
    }

    // selecting winner
    function selectWinner() public{
        require(msg.sender == manager, "only manager has access to this functionality...");
        require(participants.length>=3, "not enough participants.....");
        
        uint r = random();
        address payable winner;
        uint index = r % participants.length;
        winner= participants[index];
        // transfering balance to the winner
        winner.transfer(getBalance());
        participants= new address payable[] (0);
        // return winner.;
    }
} 