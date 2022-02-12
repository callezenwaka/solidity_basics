// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ManipulateArrays {
    // storage array
    uint[] myArray;

    function arr1() external {
        // create
        myArray.push(2);
        myArray.push(3);
        myArray.push(4);
        // read
        myArray[0];
        // update
        myArray[0] = 4;
        // delete
        delete myArray[0];

        for(uint i = 0; i < myArray.length; i++) {
            myArray[i];
        }
    }

    // memory arrays
    function arr2() external {
        uint[] memory newArray = new uint[](10);
        // create
        newArray[0] = 10;
        newArray[2] = 20;
        // read
        newArray[0];
        // update
        newArray[0] = 30;
        // delete
        delete newArray[2];
    }

    // arrays in functions
    function arrFunc1(uint[] calldata myArg) external {

    }

    // arrays in functions
    function arrFunc2(uint[] memory myArg) internal returns(uint[] memory) {

    }
}