//SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;
import "hardhat/console.sol";

contract Structs_def{
    struct Student{
        string student_name;
        uint256 student_id;
        address student_address;
    }

    Student  student_1;
    //CRUD operations ! 

    function CreateStudent(string memory _name , uint256 _id) public returns(Student memory){
        student_1 = Student({
            student_address: msg.sender,
            student_name : _name,
            student_id : _id
        });
        return student_1;
    }
    
    function getName() public view returns(string memory) {
        return student_1.student_name;
    }
    function updateName(string memory _name) public {
        student_1.student_name = _name;
    }
    function deleteStudent() public {
        delete student_1;
    }
}