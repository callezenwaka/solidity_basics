// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ParentContract {
    constructor(uint a) public {

    }
}

contract Constructor is ParentContract {
    uint a;
    address admin;
    constructor(uint _a) public {
        a = _a;
        admin = msg.sender;
        func();
    }

    function func() public {
        a = 2;
    }
}

