//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

contract Modifier{
    //Ejemplo de solo propietario del contrato puede ejecutar una funcion
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "No tienes permisos para ejecutar la funcion");
        _;
    }

    function ejemplo1() public onlyOwner(){
        //Codigo de la función para el propietario del contrato
    }

    struct cliente{
        address direccion;
        string nombre;
    }

    mapping(string => address) clientes;

    function altaClientes(string memory _nombre) public{
        clientes[_nombre] = msg.sender;
    }

    modifier soloClientes(string memory _nombre){
        require(clientes[_nombre] == msg.sender);
        _;
    }

    function ejemplo2(string memory _nombre) public soloClientes(_nombre){
        //Logica de la funcion para los clientes
    }

    //Ejemplo de conlducción
    modifier mayorEdad(uint _edadMinima, uint _edadUsuario){
        require(_edadUsuario >= _edadMinima);
        _;
    }

    function conducir(uint _edad) public mayorEdad(18, _edad){
        //Codigo a ejecutar para los conductores mayores de edad 
    }
}