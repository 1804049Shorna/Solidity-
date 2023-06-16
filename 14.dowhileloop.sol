//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;

//solidity do while lopp

 contract dowhille{

     uint[] data;
     uint j=0;

function loop() public returns(uint[] memory){
    do{
        j++;
        data.push(j);
    }while(j<=5);

    return data;
}
    

     
     
          
     }


  



