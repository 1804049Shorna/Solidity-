//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;

//SOLIDITy Modifers
//===Important Notes
//modifiers are the funcrion that can be called before or after the function call
//generally use for three reason
//--Restrict access, Validate inputs ,gauard against reentrancy attack



 contract MODIFIERS{
     address public owner;
     uint public x=10;
     bool public locked;

     constructor(){
         owner=msg.sender;
     }
     
     modifier onlyowner(){
         require(msg.sender==owner,"not owner");
         _;
     }

     modifier validate(address _addr){
         require(_addr!=address(0),"not an address");
         _;

     }
     modifier noReentrancy(){
         require(!locked,"No reentrancy");
         locked=true;
         _;
         locked=false;

     }
     function chanowner(address _newowner)public onlyowner validate(_newowner){
         owner=_newowner;
     }

     function decrement(uint i) public noReentrancy{
         x-=1;
         if(i>1)
         {
             decrement(i-1);
         }
     }

     

     


  

}
