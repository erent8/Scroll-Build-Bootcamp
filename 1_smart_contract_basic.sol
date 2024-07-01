// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract Counter {
    // Data
    uint public count;

    // Constructor
    constructor() {
        count = 1;
    }
    // Query Functions
    function getCount() public view returns(uint256) {
        return count;
    } 

    // Execute Functions
    function increment() public {
        count++;
    }
    function decrement() public {
        count--;
    }
}
