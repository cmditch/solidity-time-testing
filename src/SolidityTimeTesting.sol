pragma solidity ^0.4.23;

contract SolidityTimeTesting {
    uint public startDate;
    uint public lockPeriod;

    constructor(uint _days) public {
        startDate = era();
        lockPeriod = _days;
    }

    function withdraw() public view returns(bool) {
        return era() > (startDate + lockPeriod);
    }


    function era() public view returns (uint64) {
        return uint64(now);
    }
}
