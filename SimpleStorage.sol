// SPDX-License-Identifier: MIT
pragma solidity ^0.8.34; // Starting our version !

contract SimpleStorage {
    uint256 public myfavoriteNumber;

    struct Person{
        uint256 favNum;
        string name;
    }
    Person public pit = Person(53, "Pit");

    Person[] public listOfPerson;

    function store(uint256 _favoriteNumber) public virtual {
        myfavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return myfavoriteNumber;
    }

    mapping(string => uint256) public nameTOFavNum;

// Calldata for demp and can't be modified , memory for temp var and can be mpdofied, storage permanent var! 
// Only need to use for special types - string , array, struct, mapping 
    function addPerson(string memory _name, uint256 _favNum) public {
        listOfPerson.push(Person(_favNum, _name));
        nameTOFavNum[_name] = _favNum;
    }

    

}