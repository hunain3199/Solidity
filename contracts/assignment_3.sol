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

contract prime{
    function prime_num(uint n) public pure returns(string memory){
        for(uint i = 2; i <= n/2; i++){
            if(n % i == 0){
                return "It is not prime";
            }
        }
        return "IT IS PRIME NUMBER";
    }
}