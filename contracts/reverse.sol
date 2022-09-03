// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract reverse_num {
    function reverse(uint num) public pure returns(uint){
        uint num1;
        uint num2 = 0;
        while(num > 0){
            num1 = num % 10;
            num2 = (num2 * 10) + num1;
            num = num / 10;
        }
        

        return num2;



    }
}

contract array_reversal {
    function reverseArray(uint256[] memory arr, uint256 len)
        public
        pure
        returns (uint256[] memory)
    {
        uint256 temp;
        for (uint256 i = 0; i < len / 2; i++) {
            temp = arr[i];
            arr[i] = arr[len - i - 1];
            arr[len - i - 1] = temp;
        }
        return arr;
    }
}

contract Even {
    function even(uint256[] memory arr, uint256 len)
        public
        pure
        returns (uint256[] memory)
    {
        for (uint256 i = 0; i < len; i++) {
            arr[i] = 2 * arr[i];
        }
        return arr;
    }
}

contract Sort {
    function sort(int256[] memory array, uint256 size)
        public
        pure
        returns (int256[] memory)
    {
        for (uint256 step = 0; step < size - 1; ++step) {
            int256 swapped = 0;

            for (uint256 i = 0; i < size - step - 1; ++i) {
                if (array[i] > array[i + 1]) {
                    int256 temp;
                    temp = array[i];
                    array[i] = array[i + 1];
                    array[i + 1] = temp;

                    swapped = 1;
                }
            }

            if (swapped == 0) {
                break;
            }
        }
        return array;
    }
}



