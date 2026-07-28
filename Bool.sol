//SPDX-License-Identifier: MIT  
pragma solidity ^0.8.30;
import "./node_modules/hardhat/console.sol"; // to can write console.log()

contract MyContract{
    //default value = false 
    bool MyBool = true ;
    //1 byte
    //_______________________________
    //by default unit256 !
    uint MyPoseteveInt = 655398348;
    //uint8 = 0 --> (2^n) - 1 --> 2^8 -1 --> 255 
    //unit16 = 0 --> 2^16 -1 --> 65535
    //unit256 = 0 --> 2^256
    int MyInt = 839480;
    //int8 = 2^(n-1) --> (2^n)-1 = 2^(7)-->(2^8) -1 = -128 --> 255 
    //__________________________________
    address userAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    //default value 0x00000000000000000000000000000000000000000000
    //address comes from last 20 byte in public key 
    //___________________________________
    //Fixed-size byte arrays-->!
    bytes1 a1_byte = 0xdf ; // 0.5 byte for hexa number and 1 byte for normal num or char 
    bytes2 a2_byte = 0xaf04 ; // you can't use less or more than the number of bytes you typed 
    bytes32 a_max_byte = "kdf"; // if normal string you can tybe less bytes only 

    // bytes memory a_nonDefiend_bytes = "lagjlajglslg"; //you can type any num of bytes , no limit 
    //_________________________________________
    string any = "eng abdallah";
    // هنكتب جمب string --> memory لو جوا function او لو هتتعامل مع فانكشن ك param
}