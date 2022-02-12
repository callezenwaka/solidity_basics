// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import './FunctionTwo.sol';

contract One {
    address addressB;

    function setAddressB(address _addressB) external {
        addressB = _addressB;
    }

    function callHelloWorld() external view returns(string memory) {
        InterfaceTwo two = InterfaceTwo(addressB);
        return two.helloWorld();
    }
}