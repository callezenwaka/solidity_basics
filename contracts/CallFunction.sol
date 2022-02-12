// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract One {
    address addressTwo;

    function setAddressB(address _addressTwo) external {
        addressTwo = _addressTwo;
    }

    function callHelloWorld() external view returns(string memory) {
        Two two = Two(addressTwo);
        return two.helloWorld();
    }
}

contract Two {
    function helloWorld() external pure returns(string memory) {
        return "HelloWorld";
    }
}