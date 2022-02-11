// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract FunctionVisibility {
    uint value;

    function _getValue() private view returns(uint) {
        // Only inside smart contract call
        return value;
    }

    function _getValue_() internal view returns(uint) {
        // Only inside and inherited smart contract call
        return value;
    }

    function getValue() external view returns(uint) {
        // Only outside smart contract call
        return value;
    }

    function __getValue__() public view returns(uint) {
        // Only outside and inside smart contract call
        return value;
    }

    function setValue(uint _value) external {
        value = _value;
    }
}