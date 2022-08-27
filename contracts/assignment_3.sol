// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract sum{
    function digit_sum(int256 n) public pure returns(int256){
        int256 a;
        int256 summ = 0;
        while (n > 0) {
            a = n % 10;
            summ = summ + a;
            n = n / 10;

        }
        return summ;
    }
}