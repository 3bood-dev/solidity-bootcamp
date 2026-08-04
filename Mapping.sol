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

contract Nested_Mapping{
    mapping(uint256 => mapping (string => uint256)) public votes;
    function addVote(uint256 vote_id , string memory candidate_name, uint256 vote_count) public {
        votes[vote_id][candidate_name]= vote_count;
    }
    function delete_vote(uint256 vote_id , string memory candidate_name) public {
        votes[vote_id][candidate_name]--;
    }
}