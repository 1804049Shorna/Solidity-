//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;



 contract whille{

     uint public n=5;
     string public s;
     uint256[] data;
     uint k=0;

     function ww(uint _num) public returns(uint){
         while(_num<=0)
         {
             n=n+1;
             _num--;
         }
         return n;
     }
     function loop() public returns(uint256[] memory)
     {
         while(k<5)
         {
             k++;
             data.push(k);
         }
         return data;
     }

     
     
          
     }


  



