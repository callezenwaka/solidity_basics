// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Fallback {
    fallback() external payable {
        
    }
}
// detect if address is a smart contract
contract Assembly1 {
    function func() external view returns(bool) {
        uint size;
        address addr = msg.sender;

        assembly {
            size := extcodesize(addr)
        }

        if(size > 0) {
            return true;
        } else {
            return false;
        }
    }
}

// cast bytes to bytes32
contract Assembly2 {
    function func() external pure {
        bytes memory data = new bytes(10);

        bytes32 dataB32;

        assembly {
            dataB32 := mload(add(data, 32))
        }
    }
}