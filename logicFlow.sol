//SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

contract if_statement{
    function isPositive(int256 num) public pure returns (string memory){
        if (num>0){
            return"positive";
        }
         return "nigative";
    }}