//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

library Operaciones{
    function division(uint _i, uint _j) public pure returns(uint){
        require(_j>0, "No podemos dividir por cero");
        
        return _i / _j;
    }

    function multiplicacion(uint _i, uint _j) public pure returns(uint){        
        return _i * _j;
    }
}

contract calculos{
    using Operaciones for uint;

    function calculo(uint _a, uint _b) public pure returns(uint, uint){
        uint q = _a.division(_b);
        uint m = _a.multiplicacion(_b);

        return (q, m); 
    }
}