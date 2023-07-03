pragma solidity ^0.8.13;

contract events{
    //Event DEclaration
    // up to 3 parameters can be indexed
    //indexed parameters helps you to filter the logs by the indexed parameter 

    event log(address indexed sender,string message);
    event anotherlog();

    function text() public{
        emit log(msg.sender,"hello brother");
         emit log(msg.sender,"hello EVM");
          emit anotherlog();
    }
    

}