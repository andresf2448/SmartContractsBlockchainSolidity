pragma solidity >=0.4.4 <0.7.0;

contract Tiempo{
    //unidades de tiempo
    uint public tiempo_actual = now;
    uint public un_minuto = 1 minutes;
    uint public dos_horas = 2 hours;
    uint public cincuenta_dias = 50 days;
    uint public una_semana = 1 weeks;

    //operaciones
    function masSegundos() public view returns(uint){
        return now + 50 seconds;
    }
    
    function masHoras() public view returns(uint){
        return now + 1 hours;
    }

    function masDias() public view returns(uint){
        return now + 3 days;
    }

    function masSemanas() public view returns(uint){
        return now + 1 weeks;
    }
}