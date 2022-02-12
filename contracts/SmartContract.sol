// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract LoanFactory {
    Loan[] loans;
    function createLoan() external {
        Loan loan = new Loan(100);
        loans.push(loan);
        address(loan);

        loan.reimburse();
    }
}

contract Loan {
    uint public amount;
    address admin;
    constructor(uint _amount) public {
        amount = _amount;
        admin = msg.sender;
    }

    function reimburse() external {

    }
}