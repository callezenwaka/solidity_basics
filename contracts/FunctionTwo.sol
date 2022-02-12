// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract InterfaceTwo {
    function helloWorld1() external pure returns(string memory);
    function helloWorld2() external pure returns(string memory);
}
contract Two {
    function helloWorld1() external pure returns(string memory) {
        return "HelloWorld";
    }

    function helloWorld2() external pure returns(string memory) {
        return "HelloWorld";
    }
}