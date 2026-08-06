//SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;
import "hardhat/console.sol";
//_____
// how much money i have in contract?
contract money_test{
    function fund()public payable {
        //take the fund
    }
    function getBalance() public view returns(uint256) {
        //"this" refare to "this contract" 
        return address(this).balance; // let you know how much balance in this contract
    }
}
//__________________________________________________
//how can i receive money in the contract 
contract receive_func {
    receive() external payable { 
        // let you receive money on contract without spending any money on functions 
    } //let the property __> calldata : empty 
}