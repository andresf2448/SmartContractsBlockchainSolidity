pragma solidity >=0.4.4 <0.7.0;

contract Enums{
    //Enumeracion de interruptor
    enum Estado {ON, OFF}

    //variable de tipo enum
    Estado state;

    function encender() public {
        state = Estado.ON;
    }

    function fijarEstado(uint _k) public {
        state = Estado(_k);
    }

    function estado() public view returns(Estado){
        return state;
    }

    //Enumeracion de direcciones
    enum Direcciones {ARRIBA, ABAJO, DERECHA, IZQUIERDA}

    //variable de tipo Direcciones
    Direcciones direccion = Direcciones.ARRIBA;

    function arriba() public{
        direccion = Direcciones.ARRIBA;
    }

    function abajo() public{
        direccion = Direcciones.ABAJO;
    }

    function derecha() public{
        direccion = Direcciones.DERECHA;
    }

    function izquierda() public{
        direccion = Direcciones.IZQUIERDA;
    }

    function fijarDirecciones(uint _k) public{
        direccion = Direcciones(_k);
    }

    function direcciones() public view returns(Direcciones){
        return direccion;
    }
}