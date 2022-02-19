pragma solidity >=0.4.4 <0.7.0;

contract PrimerContrato{
    address owner;    
    
    constructor() public{
        owner = msg.sender;
    } 
}