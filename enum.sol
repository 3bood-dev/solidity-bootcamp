//SPDX-License-Identifier: MIT  
pragma solidity ^0.8.30;

//enum definition 
contract enum_def{
    enum State{
        red, 
        yellow,
         green 
    }
    State public states;
    function red_state()public {
        states = State.red; //0
    }
}