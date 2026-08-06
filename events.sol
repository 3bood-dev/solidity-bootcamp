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

contract Event_def2{
    uint256 public PRICE = 100;
    //MAX indexed is 3 in the event 
    // 
  event ticketSold(address indexed,uint256 indexed); 
  // when we use indexed something called topics[] in the logs have the values of event 
  // like this :
  // topics[0] = hash event
  // topics[1] = first item
  // topics[2] = sec item 
  function buyTicket()public {
    //logic
    //
    //
    emit ticketSold(msg.sender, PRICE);
  } 
}