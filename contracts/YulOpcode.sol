// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

//Verifying gas taxes in Solidity e Assembly

contract Opcodegas{
    function sumEmSolidity(uint256 a, uint256 b) external pure returns(uint256){
        //add in Solidity with function "+"
        //gas tax: 940 gas (Cost only applies when called by a contract)
        uint256 sum = a + b;
        return sum;
    }

    function sumEmOpcode(uint256 a, uint256 b) external pure returns(uint256 result){
        //add in OpCode with function "add()"
        //gas tax: 770 gas (Cost only applies when called by a contract)
        assembly{
            result := add(a, b)
        }
        return result;
    }
    //Using OpCode we can reduce the gas taxes
    //It is important reduce the gas taxes
}