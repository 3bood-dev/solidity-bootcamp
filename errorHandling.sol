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