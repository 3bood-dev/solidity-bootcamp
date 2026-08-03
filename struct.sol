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