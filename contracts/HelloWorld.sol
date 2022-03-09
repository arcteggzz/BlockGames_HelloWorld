// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract HelloWorld {

    // Declaring state variables
    string public name;
    string public standardGreeting = "HelloWorld ";

    int8 public age;
    string public standardAgeStatement = "Your Age is ";

    //Creating a constructor to set value of 'name' and age    
    constructor(string memory initialName) {
        name = initialName;
        age = 24;
    } 

    //Function to set name of user for future use/changes
    function setName(string memory newName) public {
        name = newName;
    }

    //Function to set age of user for future use/changes
    function setAge(int8 newAge) public {
        age = newAge;
    }

    // Defining function to retreive the value of 'name' 
    function getName() public view returns (string memory) {       
        return string(abi.encodePacked(standardGreeting, name));       
    } 

    // Defining function to retreive the value of 'age' 
    function getAge() public view returns (string memory) {       
        return string(abi.encodePacked(standardAgeStatement, age));     
    } 
}