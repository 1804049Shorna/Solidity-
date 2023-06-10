//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;

//SOLIDITY ERROR HANDLING
//===ASSERT STATEMENT

 contract ASSERT{

     bool public result;

     function checkoverflow(uint256 n1,uint256 n2)public returns(bool){
         uint256 sum=n1+n2;
         assert(sum<=255);
         result=true;
     }





     
     


  }
