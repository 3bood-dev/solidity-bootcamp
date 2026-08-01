//SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

contract if_statement{
    function isPositive(int256 num) public pure returns (string memory){
        if (num>0){
            return"positive";
        }
         return "negative";
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
        
contract loops_statement{
    function sum_numbers_using_if_statement() public pure returns(uint256){
       uint256 result = 0;
        for(uint256 i = 1 ; i<= 10;i++){
            result = i + result; 
        }
        return result;
        }
    function sum_numbers_using_while_statement()public pure returns(uint256){
        uint256 i  ;
        uint256 result ;
        while(i<=10){
            result=result+i;
            i++;
        }
        return result;
    }
    function sumNumbers(uint256 n) public pure returns (uint256) {
        uint256 total = 0;

        for (uint256 i = 1; i <= n; i++) {
            total += i;
        }

        return total;
    }
    function reducePrice(uint256 startPrice, uint256 minPrice) public pure returns (uint256) {
        uint256 currentPrice = startPrice;

        while (currentPrice > minPrice) {
            currentPrice -= 10;
        }

        return currentPrice;
    }
}