//SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

//we use interface over abstract contract --> when we put all functions without implemntations 

// and we use abstract contract when we have atleast a one function have no implemntations

// How we type the syntax ??
// use "interface" and make the next word have 'I' in the fisrt of it --> (convintion) like IAnimal 
// and use external instead of (public virtual) but we use "override" normaly in the childs 

interface IAnimal{
    //have no state variable 
    //have no constructor 
    //can inherite from anthor interface 
    //can use (user defined types) like (enum,structs)
    function setSound() external pure returns(string memory);
}

contract Dog is IAnimal{
    function setSound() public pure returns(string memory){
        return "Woof";
    }
}

//____________________________________________________________________________
//IMPORTANT FEATURE////// _______> can interact with external contracts
contract A {
    uint256 public counter;
    function increaseByOne()public {
        counter+=1;
    }
}
interface IA{
    function increaseByOne()external;
}

contract B {
    function call_increase(address _contractAddress)public {
        IA(_contractAddress).increaseByOne();
    }
}