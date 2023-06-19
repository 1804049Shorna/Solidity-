//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;


// two types array 
//fixed size 
//dynamic size 

 contract ARRAY{

     uint[] public arr;


    uint[] public arr2=[1,2,3];

    // fixed size array ,all elements initialize to 0

    uint[10] public myfixarray;

    function get(uint i) public view returns (uint){
        return arr[i];
    }
     function getArr(uint i) public view returns (uint[] memory){
        return arr;
    }
      function push(uint i) public {
          //Append to array
          //this will increase the array length by 1;
          arr.push(i);
        
    }

    function pop() public{
        //remove the last element of the array
        // this will decrease the array element by 1
        arr.pop();
    } 
    function getlength() public view returns(uint){
        return arr.length;
    }

    function remov(uint i) public{
        delete arr[i]; 
    }
    function examples() external {
        // creating array in memory ,only fixed size can be created 
        uint[] memory a=new uint[](5);

    }




// Solidity can return the entire array 
//but this function should be avoided for 
// arrays that can grow indefinitely


 }

   
