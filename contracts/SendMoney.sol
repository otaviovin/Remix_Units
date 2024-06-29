//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract SendWithdrawalMoney {

    uint public balanceReceived; //variable to see the balance received after all deposits
    //function where you can put the value of ethers you want to deposit in the
    //address of the contract
    function deposit() public payable {
        balanceReceived += msg.value;
    }
    //returns the balance of the contract after doing deposits and withdrawals
    function getContractBalance() public view returns(uint) {
        return address(this).balance;
    }
    //withdrawal all the balance of the contract, after this the balance will be "zero"
    function withdrawalAll() public {
        address payable to = payable(msg.sender);
        to.transfer(getContractBalance());
    }
    //withdrawal to a specific address chosen
    function withdrawalToAddress(address payable to) public  {
        to.transfer(getContractBalance());
    }

}