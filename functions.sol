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
// ____________________________________________________________
// Variable_visibility_modifier --!
contract Variable_visibility_modifier{
    uint256 public price_1 = 100; // when you set a public variable , the IDE creats a Getter function with the same name by defult
    uint256 internal price_2 = 200;
    uint256 private price_3 = 300;
    function all_visibility() public view {
       console.log(price_1); 
       console.log(price_2);
       console.log(price_3);
    }
    }
contract Variable_visibility_modifier_2 is Variable_visibility_modifier{
      function all_visibility_without_private() public view {
       console.log(price_1); 
       console.log(price_2);
      // console.log(price_3);
    }
}
contract Variable_visibility_modifier_3{
    function all_visibility_without_internal_and_private(address contractAddress) public view {
       console.log(Variable_visibility_modifier(contractAddress).price_1()); 
    //    console.log(price_2);
    //    console.log(price_3);
    }
}

//_______________________________________________________
contract Function_visibility_modifier{
    function func1()public {

    }
    function func2()internal {
        
    }
    
    function func3()private {
        
    }
    
    function func4()external {
        
    }
}
contract Function_visibility_modifier_2 is Function_visibility_modifier{
    function func_num_test()public {
        func1();
        func2();
        //func3():
       // func4();
    }

}
//_______________________________________________
//modifier explenation 
contract Modifier_explination{
    uint256 public PRICE = 100;
    uint256 public check_of_modifier_state;
    modifier check_price(){
        require(msg.value>= PRICE,"your money is not enough");
        _;
        check_of_modifier_state++;
    }
    function buy_something()public check_price payable  {

    }
}