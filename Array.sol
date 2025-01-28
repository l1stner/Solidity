// SPDX-License-Identifier: MIT

pragma solidity 0.8.26; 

contract Array{

    uint256 public myFavoriteNumber; 
    
    //uint256[] listOfFavNum;

    struct Person {
        uint256 favoriteNumber;
        string name;
        
    }

    Person[] public listOfPeople; // []

    mapping(string => uint256) public nameToFavNum; // default values for all key is ZERO 

    // Person public myFriend = Person({favoriteNumber: 1, name: "Tan"});

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
        
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        // Person memory newPerson = Person(_favoriteNumber, _name);
        // //listOfPeople.push(nwePerson);
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavNum[_name] = _favoriteNumber; 
    }
    
}