//SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

contract if_statement{
    function isPositive(int256 num) public pure returns (string memory){
        if (num>0){
            return"positive";
        }
         return "nigative";
    }
    function getGrade(uint256 grade) public pure returns (string memory){
        if (grade>90){
            return "A";
        }  
        else if (grade>80){
            return "B";
        }  
        else if (grade>70){
            return "C";
        }  
        else if (grade>60){
            return "D";
        }
        return "Fail" ; 
        }}