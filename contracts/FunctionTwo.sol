// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

interface InterfaceTwo {
    function helloWorld() external pure returns(string memory);
    function hello() external pure returns(string memory);
}

// abstract contract InterfaceTwo {
//     function helloWorld() external virtual returns(string memory);
//     function hello() external virtual returns(string memory);
// }

contract Two {
    function helloWorld() external pure returns(string memory) {
        // revert();
        return "Hello World";
    }

    function hello() external pure returns(string memory) {
        return "Hello";
    }
}