// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/Hack1.sol";

contract Hack1Test is Test {
  Hack1 public hack;
  Target public target;

  function setUp() public {
    target = new Target();
    hack = new Hack1(address(target));
  }

  function testPwn() public {
    // console.log(address(this).balance);
    hack.setup{value: 10 * 1e18}();
    hack.pwn{value: 100000 * 1e18}();
  }
}