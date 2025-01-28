// SPDX-License-Identifier: MIT

pragma solidity 0.8.26; 

//warning yellow -> can compl=ile and deploy
//Error red -> can not compile  and can not deploy 

contract ErrorsAndWarnings {
  
    uint256 public myFavoriteNumber; 
    
    //uint256[] listOfFavNum;

    struct Person {
        uint256 favoriteNumber;
        string name;
        
    }

    Person[] public listOfPeople; // []



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
    }
    

}