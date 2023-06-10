//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;

//SOLIDITY ERROR HANDLING
//===REQUIRE STATEMENT

 contract REQUIRE{

     function checkinput(uint n) public view returns(string memory){
         // require structure should look like this (a condition , and a errorr message )

         require(n>=0,"invalid input");
         require(n<=255,"nvalid input");

         return "Input is uint8";

     }
     function odd(uint input) public view returns(bool){
         require(input%2!=0);
         return true;
     }


     


  


}
