// SPDX-License-Identifier: Unlicensed


pragma solidity >=0.7.0;

contract enums{
    
    enum size{ small, medium, large}
    size public choice = size.medium;         // size naam ko variable banako OR enum type ko variable banako. And default size medium is given

    function setSmall() public {
        choice = size.small;
    }

    function setMedium() public {
        choice = size.medium;
    }
    
    function setLarge() public {
        choice = size.large;
    }
    

}