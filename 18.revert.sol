//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;

//SOLIDITY ERROR HANDLING
//===REVERT STATEMENT

 contract REVERT{

     function checkoverflow (uint n1,uint n2) public 
     view 
     returns(string memory,uint){

         uint sum=n1+n2;
         if(sum<0|| sum>255){
             revert("overflow exist");
         }
         else 
         {
             return ("no overflow ",sum);
         }


     }

     


     


  


}
