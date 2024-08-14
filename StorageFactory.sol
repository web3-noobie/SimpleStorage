// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {

    //Create an Array of type SimpleStorage
    SimpleStorage[] public listOfSimpleStorageContracts;

    //Create new SimpleStorage contract and put them into the ssArray above
    function createSimpleStorageContract() public {
        //new keyword lets you deploy contracts from contracts
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    //Take in an index value for the ssArray and put a number for the variable myFavouriteNumber for that contract
    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        //to interact with contracts, we need the address and ABI
        
        //We need to pull the address from the SimpleStorage Array so we can interact with the Store function
        //SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        //mySimpleStorage.store(_newSimpleStorageNumber);
        //above refactored below
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }
    //Take in an index value for the ssArray and pull the number saved into myFavouriteNumber for that contract
    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) {
        //SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        //return mySimpleStorage.retrieve();
        //above refactored below
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }
}
