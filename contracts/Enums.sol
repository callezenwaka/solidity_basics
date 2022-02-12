// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Enums {
    // declare enum
    enum STATE {
        INACTIVE,
        ACTIVE,
        PREMIUM,
        CANCELLED
    }
    // declare a variablewith enum
    STATE.state;

    // using enum with struct
    struct User {
        STATE state;
    }

    function func1() external {
        state = STATE.ACTIVE;
    }

    function func2() external {
        if(state == STATE.ACTIVE) {
            // do something
        }
    }

    function func3(STATE _state) {

    }
}