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

//_____________________________________
//Abstract contract 
abstract contract Animal{
    function animalSound()public pure virtual returns(string memory);
}
contract Dog is Animal {
    // you must but the abstract function because of error 
    function animalSound()public pure override  returns(string memory){
        return "Woof";
    }
}
contract Cat is Animal {
    function animalSound()public pure override returns(string memory){
        return "Meow";
    }
    
}