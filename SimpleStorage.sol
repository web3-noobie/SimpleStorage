// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    //Varaible called myFavouriteNumber
    uint256 myFavouriteNumber = 0;

    //Create a new type class called Person
    struct Person {
        uint256 favouriteNumber;
        string name;
    }

    //Create an Array of type Person
    Person[] public listOfPeople;

    //Create a mapping that will create a relationship between a string (name of Person) and a value (index in the Person Array)
    //We can this so we can easily find the index of a name
    mapping(string => uint256) public nameToFavouriteNumber;

    //Create a function to store a value into myFavourite Number
    //virtual is included for addfivestorage contract - you need virtual for a function to be overrideable
    function store(uint256 _favouriteNumber) public virtual {
        myFavouriteNumber = _favouriteNumber;
    }
    
    //Create a function to call the value of myFavouriteNumber
    function retrieve() public view returns (uint256){
        return myFavouriteNumber;
    }

    //Create a function that will add a name person and their favourite number to the array
    //Update the mapping so you can easily find the index of that person
    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        listOfPeople.push( Person(_favouriteNumber, _name));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}
