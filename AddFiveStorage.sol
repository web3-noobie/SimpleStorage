// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

//is allows inheritance
contract AddFiveStorage is SimpleStorage {
    //We want to add 5 to the store function
    //We want to override the existing store function
    //We need to put virtual in the original contract
    function store(uint256 _newNumber) public override {
        myFavouriteNumber = _newNumber + 5;
    }
    
}
