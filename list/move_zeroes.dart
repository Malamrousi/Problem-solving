// problem link=> https://leetcode.com/problems/move-zeroes/description/
// level => easy
//problem id on leetcode=>#283
//day => 31/10 /2024
void main() {
  moveZeroes([0, 1, 0, 3, 12]);
}
//idea of solution=> create a temp array to store 0 and then add them to the original array
void moveZeroes(List<int> nums) {
  List<int> temp = [];
  
  for (int item in nums) {
    if (item == 0) {
      temp.add(item);
    }
  }
  nums.removeWhere((element) => element == 0);

  nums.addAll(temp);

  print(nums);
}
