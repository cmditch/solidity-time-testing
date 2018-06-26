pragma solidity ^0.4.23;

import "../lib/ds-test/src/test.sol";
import "../lib/ds-warp/src/warp.sol";

import "./TimeTest.sol";

contract WarpableTimeTest is TimeTest(20 days), DSWarp {}

contract TimeTestTesting is DSTest {
    WarpableTimeTest testContract;

    function setUp() public {
        testContract = new WarpableTimeTest();
    }

    function test_various_withdraws() public {
        // Withdraw at day 0 == false
        assertTrue(!testContract.withdraw());

        // Fast forward 10 days and try withdraw. Shoule be false still.
        testContract.warp(10 days);
        assertTrue(!testContract.withdraw());

        // Fast forward another 10 days and try withdraw. Shoule be false still.
        testContract.warp(10 days);
        assertTrue(testContract.withdraw());
    }

    function testFail_early_withdraw() public {
        testContract.warp(3 days);
        assertTrue(testContract.withdraw());
    }

}
