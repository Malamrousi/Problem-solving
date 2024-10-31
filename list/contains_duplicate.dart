// problem link=> https://leetcode.com/problems/contains-duplicate/description/?envType=problem-list-v2&envId=array&difficulty=EASY
// topic => array
// level => easy
//problem id on leetcode=>#217
//day => 31/10 /2024




class Solution {

  //using nested loop
  bool containsDuplicate(List<int> nums) {
    bool result = false;

    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums.isEmpty) {
          return result = false;
        } else if (nums[i] == nums[j]) {
          return result = true;
        }
      }
    }

    return result;
  }
}

class Solution2 {

  //using set to remove duplicate
  bool containsDuplicate(List<int> nums) {
    // to set => Convert the list to a Set (a non-repeatable set) 
    if (nums.length == nums.toSet().length) {
      return false;
    } else {
      return true;
    }
  }
}
