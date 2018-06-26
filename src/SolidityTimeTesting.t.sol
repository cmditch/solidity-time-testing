pragma solidity ^0.4.23;

import "../lib/ds-test/src/test.sol";

import "./SolidityTimeTesting.sol";

contract TimeTestableContract is SolidityTimeTesting, DSWarp {}

contract SolidityTimeTestingTest is DSTest {
    TimeTestableContract testContract;

    function setUp() public {
        testContract = new SolidityTimeTesting(20 days);
    }

    function test_make_valid_withdraw() public {

    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
