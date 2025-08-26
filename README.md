# SimpleStorage
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
  uint256 public favoriteNumber;
  

  function store(uint256 _favoriteNumber) public {
    favoriteNumber = _favoriteNumber;
  }

    struct person {
      string name;
      uint256 age;

    }
    // person public p = person({name:"shiva",age:18});

    mapping (string => uint256) public nametoage;

    person[] public people;

    function addperson(string memory _name,uint256 _age) public {
      people.push(person(_name,_age));
      nametoage[_name] = _age;
    }
  
  
  function retrieve() public view returns(uint256){
    return favoriteNumber;

   }
}


