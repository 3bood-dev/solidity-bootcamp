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

contract mapping_with_array{
    mapping(string => uint256[]) private grades;
    function gettGrades(string memory _name ,uint256 _index ) public view returns(uint256){
        return grades[_name][_index];
    }
    function addGrade(string memory _name , uint256 new_grade)public {
        grades[_name].push(new_grade);
    }
    function delete_grade(string memory _name , uint256 _index )public {
       delete grades[_name][_index];
    }
    function update_grade(string memory _name , uint256 _index , uint256 new_grade) public {
        grades[_name][_index] = new_grade;
    }
}

contract mapping_with_structs{
    struct STUDENT{
        uint256 student_id;
        address student_address;
        string student_name;
    }
    mapping(address => STUDENT) public students;
    function addStudent( uint256 _id , string memory _name) public {
        students[msg.sender] = STUDENT({
            student_address : msg.sender,
            student_name : _name,
            student_id : _id
        });
    }
    function DeleteStudent(address _address) public {
        delete students[_address];
    }
    
    }