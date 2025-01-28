// SPDX-License-Identifier: MIT

pragma solidity 0.8.26; 

contract Func{
    uint256 public favoriteNumber; // by default visibility is internal 
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }
    
}