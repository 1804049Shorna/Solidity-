//SPDX-License-Identifier:MIT
pragma solidity ^0.8.13;


contract Function{

    function returnMany()
    public 
    pure
    returns(uint,bool,uint){
        return(1,true,2);
    }

    //return values can be named

    function named()
    public
    pure
    returns(uint ,bool,uint){

    }

    //return value can be assigned 

    function assigned() public pure returns(uint x,bool b,uint y)
{
        return(x=1,b=false,y=9);
    }

    //use destructutring assignment when calling another 
    //function that returns multiple values 

    function desstruassignment() public pure returns(uint,bool ,uint ,uint,uint){

        (uint i,bool b,uint j)=returnMany();

        //values can be left out 
        (uint x, ,uint y)=(4,5,6);

        return (i,b,j,x,y);


    }

    //can use array for input 

    function arrayInput(uint[] memory _arr) public{}

    //can use array for output 
    uint[] public arr;
    function arrayoutput() public view returns(uint[] memory){
        return arr;

    }



    
}

// call function with key value 

contract XYZ {

    function somefunctwithmany(uint x,
    uint y,
    uint zz,
    address a,
    bool b,
    string memory s)public pure returns(uint){

    }

    function callfunc() external pure returns(uint){
        return somefunctwithmany(1,1,1,address(0),false,"c");
    }


}