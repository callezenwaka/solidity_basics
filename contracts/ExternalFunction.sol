// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import './FunctionTwo.sol';

contract One {
    address addressTwo;

    function setAddressTwo(address _addressTwo) external {
        addressTwo = _addressTwo;
    }

    function callHelloWorld() external view returns(string memory) {
        InterfaceTwo two = InterfaceTwo(addressTwo);
        return two.helloWorld();
    }
}