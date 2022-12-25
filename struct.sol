// SPDX-License-Identifier: Unlicensed


pragma solidity >=0.7.0;

contract Struct{
    
    // used to represent record. 
    // Title, Author, Subject, Book ID

    // Defining Struct

    struct student{

        string name;
        uint age;
        uint class;

    }
    
    // student public newstudent;        // struct ko variable banako

    // function getstu() public{
    //     newstudent = student("Ashwin", 22, 10);
    //     allstudents.push(newstudent);
    // }

    // function getdetail() public view returns(uint){
    //     return newstudent.class;
    // }


    student[] public allstudents;     // struct type student ko array banako

    function getStuent(string memory _name, uint _age, uint _class) public{
        student memory newstudent = student({
            name: _name,
            age: _age,
            class: _class
        });

        allstudents.push(newstudent);
    }
}