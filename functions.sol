//SPDX-License-Identifier: MIT  
pragma solidity ^0.8.30;
import "./node_modules/hardhat/console.sol";

 //____________________________________________________________________________________________________
    /*function name(param) <visibility-modifier> <state-mutability-keyword> <modifier> <return-type> {
                                                accessible within  ,  accessible by        ,  accessible from 
                                                    contract          children contracts         out side
        <visibility-modifier> : public -->           True                   True                    True
                              interneal-->           True                   True                    False
                               private -->           True                   False                   False
                               external-->           False                  False                   True
        <state-mutability-keyword> : view , pure , ___ --> view if the func see variable in the *code read from state* 
                                                       --> pure if the func do something internally and dont need any thing
                                                       --> type nothing when you take an argument and *write to state*
    }*/
    //_________________________________________
contract Function_state_mutability_keyword{
    //<state-mutability-keyword> 3 cases --!
    int256 number_ex = 333;
    function view_ex() public view returns(int256) {
        return number_ex;
    }
    function nothing_ex(int256 num) public returns(int256){
        number_ex = num;
        return number_ex;
    }
    function pure_ex()public pure returns(int256){
         int256 sum_ex= 18+2442;
         return sum_ex;
    }

}