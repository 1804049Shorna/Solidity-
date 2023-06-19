//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;

contract arrayremove{
    //[1,2,3,4,5]=>remove(2)=>[1,2,4,5]

    uint[] public arr;

    function remove (uint index)public{
        require(index<arr.length,"index out of bound");

        for(uint i=index;i<arr.length-1;i++){
            arr[i]=arr[i+1];
        }
        arr.pop();
    }
    function test() external {
        arr=[1,2,3,4,5];
        remove(2);
        //[1,2,3]
    }


}