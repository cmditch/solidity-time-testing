pragma solidity ^0.4.23;

contract TimeTest {
    uint public startDate;
    uint public lockPeriod;

    constructor(uint _days) public {
        startDate = era();
        lockPeriod = _days;
    }

    function withdraw() public returns(bool) {
        return era() >= (startDate + lockPeriod);
    }

    function era() public view returns (uint64) {
        return uint64(now);
    }
}
