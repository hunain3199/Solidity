// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract mapping_part_1 {
    mapping(uint => string) public roll_no;
    function setter(uint keys, string memory value) public {
        roll_no[keys] = value;
    }
}