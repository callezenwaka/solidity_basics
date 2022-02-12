// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Modifier {
    address admin;

    function func1(uint a) external onlyAdmin() {

    }

    modifier onlyAdmin() {
        require(msg.sender == admin, 'only admin');
        _;
    }
}