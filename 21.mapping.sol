//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;




 contract MAPPING{

     //mapping from address to uint 

     mapping (address => uint) public mymap;

     function get(address add) public view returns(uint){
         //mapping returns a value 
         //it the value was never set ,it will return the default value 

         return mymap[add];
     }

     function set(address add ,uint i) public {
         mymap[add]=i;
     }

     //mapping remove 
     function remove(address add) public{
         delete mymap[add];
     }

     // nested mapping 


     
     

     


  

}
contract nested{
    // nested mapping (mapping from address to another mapping )
    mapping (address => mapping(uint => bool)) public nes;

    function get(address add ,uint i)public view returns (bool){

        return nes[add][i];
    }
    function set(address add,uint i,bool boo)public{
        nes[add][i]=boo;
    }
    function remove(address add,uint i) public{
        delete nes[add][i];

    }

}
