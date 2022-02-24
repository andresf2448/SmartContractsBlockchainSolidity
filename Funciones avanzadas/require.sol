//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

contract Require{
    //funcion que verifique la contraseña
    function password(string memory _pas) public pure returns(string memory){
        require(keccak256(abi.encodePacked(_pas)) == keccak256(abi.encodePacked(_pas)), "contrasena incorrecta");
        return "contrasena correcta";
    }

    //Funcion para pagar
    uint tiempo = 0;
    uint public cartera = 0;

    function pagar(uint _cantidad) public returns(uint){
        require(block.timestamp > tiempo + 5 seconds, "Aun no puedes pagar");
        tiempo = block.timestamp;
        cartera += _cantidad;
        return cartera;
    }

    string [] nombres;

    function nuevoNombre(string memory _nombre) public{
        for(uint i = 0; i < nombres.length; i++){
            require(keccak256(abi.encodePacked(_nombre)) != keccak256(abi.encodePacked(nombres[i])), "ya esta en la lista");
        }

        nombres.push(_nombre);
    }
}