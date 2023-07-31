// SPDX-License_Identifier: MIT
pragma solidity^0.8.0;

contract payale {
    mapping(address => uint256) public balances ;

    address payable public  owner ;

    constructor() public{
        owner=payable(msg.sender);

    }
    function deposit() public payable{}
    function notPayable() public{}


    //function withdraw all ether from this contract 
    function withdraw() public {

        uint amount=address(this).balance;

        //seend all ether to owner
        //owner can recieve ether since address of owner is payable

        (bool success, ) = owner.call{value : amount}(""); 
        require(success,"Failed to send ether ");



    }
    //function to transfer money to a account 

    // function transfer(address payable _to,uint _amount) public payable{
    //     (bool success , )=_to.call{value:_amount}("");
    //     require (success , "fail transaction");
    //     //_to.transfer(_amount);
    // }
    
}

