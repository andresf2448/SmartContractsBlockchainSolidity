//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

contract Comida{
    struct plato{
        string nombre;
        string ingredientes;
        uint tiempo;
    }

    //array de platos
    plato [] platos;

    //relacionamos nombre del plato con sus ingredientes
    mapping(string => string) ingredientes;

    //dar de alta un plato
    function NuevoPlato(string memory _nombre, string memory _ingredientes, uint _tiempo) internal{
        platos.push(plato(_nombre, _ingredientes, _tiempo));
        ingredientes[_nombre] = _ingredientes;
    }

    function Ingredientes(string memory _nombre) internal view returns(string memory){
        return ingredientes[_nombre];
    }
}

contract Sandwitch is Comida{
    function sandwitch(string memory _ingredientes, uint _tiempo) external{
        NuevoPlato("Sandwitch", _ingredientes, _tiempo);
    }

    function verIngredientes() external view returns(string memory){
        return Ingredientes("Sandwitch");
    }
}