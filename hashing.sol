// SPDX-License-Identifier: Unlicensed

pragma solidity >=0.7.0;

contract hashing{

    // hashing functions used are: keccak256 (32 bytes), SHA256 (32 bytes).

    // function generatePass(string memory _pass) public pure returns(bytes32){
    //     return keccak256(abi.encodePacked(_pass));     // hashing the password, password input liyo user bata ani hash garyo ezpz
    // }
    
    bytes32 public password;

    function generatePass( string memory _pass) public{
        password = keccak256(abi.encodePacked(_pass));
    } 

    function sendMoney(string memory _pass) public view  {
        require(keccak256(abi.encodePacked(_pass)) == password, "wrong password");
    }
}
