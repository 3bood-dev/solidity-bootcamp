//SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;
import "hardhat/console.sol";
// inherite only public and internal 
//using (virtual , override) to patch the function in child domain
contract A {
    function sayHello()public virtual pure returns(string memory){
        return "hello from parent";
    }
}
contract B is A{
    function sayHello()public override pure returns(string memory){
        return "hello from child";
    }
}