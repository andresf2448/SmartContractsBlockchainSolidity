//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

contract funciones{
    //Añadimos dentro de un array de direcciones, la direccion de la persona que llame a la funcion
    address[] public direcciones;

    function nuevaDireccion() public{
        direcciones.push(msg.sender);
    }

    //computar el hash de los datos proporcionados como parametro
    bytes32 public hash1;

    function hash(string memory _datos) public{
        hash1 = keccak256(abi.encodePacked(_datos));
    }

    //Declaramos un tipo de dato complejo, que es comida
    struct Comida{
        string nombre;
        string ingredientes;
    }

    //creamos un tipo de dato complejo comida
    Comida public hamburguesa;

    function hamburguesas(string memory _ingredientes) public{
        hamburguesa = Comida("haburguesa", _ingredientes);
    }

    //declaramos un tipo de dato complejo, alumno
    struct alumno{
        string nombre;
        address direccion;
        uint edad;
    }

    bytes32 public hash_Id_alumno;

    //calculamos ek hash del alumno
    function hashIdAlumno(string memory _nombre, address _direccion, uint _edad) private{
        hash_Id_alumno = keccak256(abi.encodePacked(_nombre, _direccion, _edad));
    }

    //guardamos con la funcion publica dentro de una lista los alumnos
    alumno[] public lista;
    mapping (string => bytes32) alumnos;

    function nuevoAlumno(string memory _nombre, uint _edad) public{
        lista.push(alumno(_nombre, msg.sender, _edad));
        hashIdAlumno(_nombre, msg.sender, _edad);
        alumnos[_nombre] = hash_Id_alumno;
    }
}