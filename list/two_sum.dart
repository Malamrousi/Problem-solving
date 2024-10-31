// problem link=> https://leetcode.com/problems/two-sum/description/?envType=problem-list-v2&envId=array&difficulty=EASY
// topic => array
// level => easy
//day => 24 /10 /2024

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          return [i, j];
        }
      }
    }

    return [];
  }
}

void main() {
  print(Solution().twoSum([2, 7, 11, 5], 9));
}
