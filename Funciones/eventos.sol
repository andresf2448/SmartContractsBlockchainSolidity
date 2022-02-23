//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

contract Eventos{
    //Eventos
    event evento1(string _nombrePersona);
    event evento2(string _nombrePersona, uint _edadPeersona);
    event evento3(string, uint, address, bytes32);
    event abortar();

    function emitir1(string memory _nombrePersona) public{
        emit evento1(_nombrePersona);
    }

    function emitir2(string memory _nombrePersona, uint _edad) public{
        emit evento2(_nombrePersona, _edad);
    }

    function emitir3(string memory _nombrePersona, uint _edad) public{
        bytes32 hash_id = keccak256(abi.encodePacked(_nombrePersona, _edad, msg.sender));
        emit evento3(_nombrePersona, _edad, msg.sender, hash_id);
    }

    function abortarFunction() public{
        emit abortar();
    }
}