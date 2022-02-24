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

contract Cliente is Banco{
    function altacliente(string memory _nombre) public{
        nuevocliente(_nombre);
    }

    function ingresarDinero(string memory _nombre, uint _cantidad) public{
        clientes[_nombre].dinero += _cantidad;
    }

    function RetirarDinero(string memory _nombre, uint _cantidad) public returns(bool){
        bool flag = true;
        
        if(int(clientes[_nombre].dinero)-int(_cantidad) >= 0){
            clientes[_nombre].dinero = clientes[_nombre].dinero - _cantidad;
        }else{
            flag = false;
        }
        
        return flag;
    }
    
    function ConsultarDinero(string memory _nombre) public view returns(uint){
        return clientes[_nombre].dinero;
    }
}