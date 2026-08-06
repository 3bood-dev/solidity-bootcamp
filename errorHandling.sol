//SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;
import "hardhat/console.sol";

contract ErrorHandling_func{
    uint256 constant PRICE = 1 ether ;
    uint256 public the_done_operation ;
    function try_revert()public payable {
        the_done_operation++;
        if(msg.value >= PRICE){
            revert("the amout of ether not enough"); // when function revert , all the contract return to the start state again 
            // unless the (gas , nonce ) they don't return 
        }
    }
    function require_func()public payable {
        the_done_operation++;
        require(msg.value >= PRICE,"the amout of ether not enough");
    }
}

contract using_error{
    uint256 constant PRICE = 1 ether;
    error using_error__NotEnoughFund(uint256 amount);
    function revert_error()public payable{
        if(msg.value <= PRICE){
            revert using_error__NotEnoughFund({amount: msg.value});
        }}

    function require_error()public payable {
        require(msg.value <= PRICE , using_error__NotEnoughFund({amount: msg.value}));
    }
    
}
ontract myowne{
    // what we need here ? trying to recive money and take 1.5 ether from it and send back a rest of it 
    // lets try now 
    error transactionFailed();
    uint256 constant PRICE = 1.5 ether;
    uint256 public restOF;
    address user_address;
    constructor (){
        user_address = msg.sender ;
    }
    function take_fund()public payable{
       
        restOF = msg.value - PRICE ;
        (bool success,) = payable(user_address).call{value : restOF}("");
        require(success, transactionFailed());
    }
    function viiieew()public view returns(uint256){
        return address(this).balance;
    }
}