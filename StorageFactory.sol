// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.34;

import { SimpleStorage } from "./SimpleStorage.sol" ;

contract StorageFactory {
    SimpleStorage[] public simpleStoragelist ;

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorage = new SimpleStorage();
        simpleStoragelist.push(newSimpleStorage);
    }

    function sfStorage(uint256 _simpleStorageIndex, uint256 _newSimppleStorageNum) public { 
        simpleStoragelist[_simpleStorageIndex].store(_newSimppleStorageNum);
    }

    function sfGet(uint _simpleStorageIndex) public view returns(uint256) {
        return simpleStoragelist[_simpleStorageIndex].retrieve();
    }

} 