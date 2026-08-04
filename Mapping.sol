//SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

//how to make a dectionary
contract mapping_def{
    mapping(address => uint256) public isOldEnough;
    mapping(address => bool) isSups;
    //CRUD operations
    function add_Someone(address _address , uint256 _age) public {
        isOldEnough[_address] = _age;
    }
    function update_Age(address _address, uint256 _new_age)public {
        isOldEnough[_address] = _new_age;  
          }
    function delete_someone(address _address)public {
        delete isOldEnough[_address];
    }

}