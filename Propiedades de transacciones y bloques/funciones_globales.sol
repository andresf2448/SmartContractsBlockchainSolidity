pragma solidity >=0.4.4 <0.7.0;

contract funcionesGlobales{
    //función msg.sender devuelve la dirección del que llama el contrato
    function MsgSender() public view returns(address){
        return msg.sender;
    }

    //función now devuelve el tiempo que tiene el bloque en la red 
    function Now() public view returns(uint){
        return now;
    }

    //función block.coinbase devuelve la dirección del minero que está procesando el bloque
    function BlockCoinbase() public view returns(address){
        return block.coinbase;
    }

    //función block.difficulty devuelve la dificultad del bloque
    function BlockDifficulty() public view returns(uint){
        return block.difficulty;
    }

    //función block.number devuelve un número entero con el número del bloque actual
    function BlockNumber() public view returns(uint){
        return block.number;
    }

    //función msg.sig devuelve 4 bytes que es el identificador de la función
    function MsgSig() public pure returns(bytes4){
        return msg.sig;
    }

    //función tx.gasprice devuelve el precio del gas de la transacción
    function txGasPrice() public view returns(uint){
        return tx.gasprice;
    }
}