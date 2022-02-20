//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

contract CompararStrings{
    function compararByHash(string memory _j, string memory _i) public pure returns(bool){
        bytes32 hashI = keccak256(abi.encodePacked(_i));
        bytes32 hashJ = keccak256(abi.encodePacked(_j));

        if(hashI == hashJ){
            return true;
        }else{
            return false;
        }
    }

    /* 
        function compararByNatural(string memory _i, string memory _j) public pure returns(bool){
            if(_i == _j){
                return true;
            }else{
                return false;
            }
        }

        Comparar directamente los strings no se puede dado que el ==
        no está definido o permitido para tipos de datos string
    */
}