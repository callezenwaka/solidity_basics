// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Err {
    uint a;
    function func() external view {
        if(a == 10) {
            revert('This is error');
        }

        require(a != 10, 'This is error');

        assert(a != 10);
    }

    function willThrow() external pure {
        revert('Because reasons');
    }

    function willThrowNewErr() external {
        NewErr newErr = new NewErr();
        newErr.func1();
    }
}

contract NewErr {
    function func1() external pure {
        revert('New error');
    }
}