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
//___________________________________________________
//how can i send money from contract to user 
// using ( transfer , send , call   )
contract send_func{
    address owner;
    constructor(){
        owner = msg.sender;
    }
    function fund() public payable {

    }
    function using_transfer() public {
        payable(owner).transfer(0.5 ether);
    }
    function using_send()public{
       bool success = payable(owner).send(0.5 ether);
       require(success , "transfer failed");
    }
    function using_call() public {
        (bool success,) = payable(owner).call{value : 0.5 ether}("");
        require (success, "transfer failed!");
    }
}
