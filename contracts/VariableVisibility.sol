// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract VariableVisibility {
    // Only inside the smart contract
    uint private a;
    // Only inside and inherited the smart contract
    uint internal c;
    // Only outside, inside and inherited the smart contract
    uint public d;

    function foo() external {
        uint b = a + 1;
    }
}