// SPDX-License-Identifier: Unlicensed

pragma solidity >=0.7.0;

contract Units {

    modifier amount{
        require(msg.value >1 ether, "transfer value must be greater than 1");
        _;
    }

    function send() public payable amount {
    }

} 