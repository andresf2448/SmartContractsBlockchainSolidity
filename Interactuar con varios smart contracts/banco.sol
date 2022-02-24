//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

contract Banco{
    //Definimos la estructura de un cliente
    struct cliente{
        string _nombre;
        address direccion;
        uint dinero;
    }

    //relacionamos el nombre del cliente con el tipo de dato cliente
    mapping(string => cliente) clientes;

    //funcion para dar de alta a un nuevo cliente
    function nuevocliente(string memory _nombre) internal {
        clientes[_nombre] = cliente(_nombre, msg.sender, 0);
    }
}