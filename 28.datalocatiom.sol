//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;

contract dataloc{

    uint[] public arr;

    mapping (uint=> address) map;

    struct mystruc{
        uint foo;
    }
    mapping (uint => mystruc) public mys;

    function f() public{
        //call _f with state variables 
        _f(arr,map,mys[1]);

        //get a struct from a mapping 
        mystruc storage myss=mys[1];
        //create a struct in memory
        mystruc memory mysss=mys[0];

    } 

    function _f(uint[] storage _arr ,mapping (uint=>address) storage _map,mystruc storage _mys)internal{



    }

    //you can return memory variables 
    function _g(uint[] memory _arr) public returns (uint[] memory){
        
    }

    function _h(uint[] calldata _arr) external {
        
    }



}