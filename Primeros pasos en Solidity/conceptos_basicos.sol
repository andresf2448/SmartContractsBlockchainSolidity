
//Indicamos la versión
pragma solidity >=0.4.4 <0.7.0;

//Importar el archivo ERC20.sol
import "./ERC20.sol";

contract PrimerContrato{
    address owner;    
    ERC20Basic token;

    constructor() public{
        owner = msg.sender;
        token = new ERC20Basic(1000);
    } 
}