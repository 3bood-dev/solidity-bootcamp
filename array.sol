//SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;
import "hardhat/console.sol";

// Array defenation 
contract array_def{
    uint256[4] public nums=[1,1,3,8]; // fixed size array
    uint256[] arr = [9,3,4,5];
    function getIndex(uint256 _index) public view returns(uint256){
        return arr[_index];
    }
    function addElement(uint256 _num) public {
        arr.push(_num);
    }
    function getLength() public view returns(uint256){
        return arr.length;
    }
    function delete_Last_Element()public {
        arr.pop();
    }
    
    //how to delete element from anyware in the array 
    // replace the index you want to delete with the last index then delete it 
    function delete_element(uint256 _index)public {
        arr[_index] = arr[arr.length -1];
        arr.pop();
    }
}