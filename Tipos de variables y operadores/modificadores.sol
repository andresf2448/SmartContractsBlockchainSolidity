//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

/* 
    pragma solidity >=0.4.4 <0.7.0;
    para trabajar en versiones viejas con el abi necesitamos colocar la linea
    pragma experimental ABIEncoderV2;

    Además para trabajar con el contructor se necesita agregarle a este
    el modificador public cosa que en las version de la 0.7 hacia arriab no se necesita
*/

contract PublicInternalPrivate{
    //Modificador public
    uint public miEntero = 45;
    string public miString = "Andres";
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    //Modificador private
    uint private miEnteroPrivado = 10;
    bool private flag = true;

    function test(uint _k) public{
        miEnteroPrivado = _k;
    }

    //Modificador internal
    bytes32 internal hash = keccak256(abi.encodePacked("hola"));
    address internal direccion = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
}