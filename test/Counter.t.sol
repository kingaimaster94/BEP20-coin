// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {BEP20Token} from "../src/BEP20.sol";

contract CounterTest is Test {
    BEP20Token public counter;

    function setUp() public {
        counter = new BEP20Token();
    }
}
