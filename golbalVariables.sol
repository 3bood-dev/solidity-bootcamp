//SPDX-License-Identifier: MIT  
pragma solidity ^0.8.30;
import "./node_modules/hardhat/console.sol"; 
    
contract MyContract{
    //global built-in variable 
    function printOut_sender_address() public view {
        console.log(tx.origin);//tx.origin refer to the address of the one who make the transaction 
    }
    //___________________________________________
    function msg_methods()public payable {
        console.log(msg.sender); // the address of the user , like tx.origin , but deffrence in security we will know latter 
        console.log(msg.value); // the value we send 
    }
    //________________________________
}
    // tx.origin vs msg.sender 
   interface IContractB {
    function calculatePrice() external view;
}

contract A {
    function first(address b) public view { 
        console.log("tx.origin:", tx.origin);
        console.log("msg.sender :", msg.sender);
        console.log("===================================="); 
        IContractB(b).calculatePrice();
    }
}

contract B {
    function calculatePrice() public view {
        console.log("tx.origin:", tx.origin);
        console.log("msg.sender :", msg.sender);
        console.log("====================================");
    }
}
//__________________________________
//Block methods --> 
contract block_methods{
    function print_block_methods()public view {
        console.log(block.timestamp);
        console.log(block.number);
    }
}
