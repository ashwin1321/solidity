// SPDX-License-Identifier: Unlicensed

// Boolean == True or False

// Integer == Integer value, int is used for both positive and negative value whereas uint for positive integer.

// Address  == holds 20 bytes value representing the size of an Ethereum address. Used to get balance or to transfer a balance by balance and transfer method resp.

// Bytes and Strings == Bytes to store fixed size character set, string is used to store character set equal to or more than a byte.
                        //  byte length can be between 1 and 32 while string has dynamic length. Byte uses less gas so is a better choice if the length of data is known.

//Enums == To create user-defined data types. Assign names to integer constants. Making contract more readable, maintainable and less prone to errors. 

 
pragma solidity >=0.7.0;

contract Variable{
    uint videos = 30;
    int playlist = 3;
    bool active = true;
    bytes6 symbol = "ashwin";               // for x number of bytes define "bytesx"
    string name = "Variable Types in Solidity";

}

