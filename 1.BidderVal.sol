// SPDX-License-Identifier: Unlicensed

pragma solidity >=0.7.0;

contract bidder {
    string public name;
    uint256 public bidAmount;
    bool public eligible;
    uint256 constant minBid = 100;

    function setName(string memory _name) public {
        name = _name;
    }

    function setBidAmount(uint256 x) public {
        bidAmount = x;
    }

    function eligib() public {
        if (bidAmount >= minBid) {
            eligible = true;
        } else eligible = false;
    }
}
