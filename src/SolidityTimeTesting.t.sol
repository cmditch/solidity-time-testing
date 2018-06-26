pragma solidity ^0.4.23;

import "ds-test/test.sol";

import "./SolidityTimeTesting.sol";

contract SolidityTimeTestingTest is DSTest {
    SolidityTimeTesting testing;

    function setUp() public {
        testing = new SolidityTimeTesting();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
