pragma solidity ^0.8.13;
interface ICounter{
    function count() external view returns(uint);

    function inc() external;


}
contract callinterface {
    uint public count;
    function examples (address _counter) external{
        ICounter(_counter).inc();
          count=ICounter(_counter).count();
    }



}











   




