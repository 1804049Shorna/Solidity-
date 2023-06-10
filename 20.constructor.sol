//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;



 contract X{

     string public nam;
     constructor(string memory na ){
         nam=na;
     }
     

}

contract Y {
    string public text;

    constructor(string memory _t){
        text=_t;
    }


}
// there are two ways to initialize the parenet contract with parameters
//to maintain the inheritance we have to naintain the order of parent contract 
//different way of declare the constructor and parent inheritance 

contract B is X("input change to X"),Y("Input change to y"){

}

contract C is X ,Y{
    constructor(string memory nn,string memory tt)X(nn)Y(tt){

    }
}

contract D is X,Y{
    constructor()X("hello")Y("Hi"){
        
    }
}



