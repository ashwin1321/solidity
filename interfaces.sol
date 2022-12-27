// SPDX-License-Identifier: Unlicensed

// similar to abstract contracts BUT no function with any implementation can be defined
// function are type external
// no state variables or constructors can be defined
// Interface can have enums and structs
// by default virtual hunxa override garna abstract contract jasto virtual keyword dirakhnnu pardaina

pragma solidity >=0.7.0;

interface base {
    function get() external pure returns (uint256);
}

contract main is
    base // inherit garna milxa
{
    function get() public pure override returns (uint256) {
        return 2;
    }
}
