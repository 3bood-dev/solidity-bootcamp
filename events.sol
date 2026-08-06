//SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;
import "hardhat/console.sol";

//event definition
contract Event_def{
    uint256 public PRICE = 100;
  event ticketSold(address,uint256); 
  function buyTicket()public {
    //logic
    //
    //
    emit ticketSold(msg.sender, PRICE);
  } 
}
