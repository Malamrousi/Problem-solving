// problem link=> https://leetcode.com/problems/plus-one/solutions/5948296/incrementing-the-large-integer-by-one-and-returning-the-resulting-array-of-digits-using-dart/
// topic => array
// level => easy
//problem id on leetcode=>#66
//day => 1/12 /2024

void main() {
  Solution2 solution = Solution2();
  List<int> digits = [9];
  List<int> result = solution.plusOne(digits);
  print(result);
}
//solution one from me
class Solution {
  List<int> plusOne(List<int> digits) {
    String concatenated = digits.join();

    BigInt  nums = BigInt .parse(concatenated);

    print(nums);

    BigInt  test = nums + BigInt.one;
    print(test);
    return test.toString().split('').map((char) => int.parse(char)).toList();
  }
}

//other solution from leetcode
class Solution2 {
  List<int> plusOne(List<int> digits) {
    int carry = 1;
    for (int i = digits.length - 1; i >= 0; i--) {
      digits[i] += carry;
      carry = digits[i] ~/ 10;
      digits[i] = digits[i] % 10;
    }
    if (carry > 0) {
      digits.insert(0, carry);
    }
    return digits;
  }
}

class Solution3 {
  List<int> plusOne(List<int> digits) {
    // Loop through the digits list from the last element to the first
    for (int i = digits.length - 1; i >= 0; i--) {
      // If the current digit is less than 9, just add 1 to it
      // and return the updated list as no carry is needed
      if (digits[i] < 9) {
        digits[i]++;
        return digits;
      }
      // If the current digit is 9, set it to 0
      // and continue to the next digit (carry over the 1)
      digits[i] = 0;
    }
    // If we exit the loop, it means all digits were 9
    // Add a 1 at the beginning of the list to account for the carry
    digits.insert(0, 1);
    return digits; // Return the updated list
  }
}


