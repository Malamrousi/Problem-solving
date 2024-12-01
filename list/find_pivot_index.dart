void main() {
  print(pivotIndex([-1, -1, -1, -1, -1, -1]));
}

int pivotIndex(List<int> nums) {
  int leftSum = 0;
  int totalSum = nums.fold(0, (current, pervice) => current + pervice);

  int temp = -1;
  for (int i = 0; i < nums.length; i++) {
    if (i == 0 || i == nums.length - 1) {
      if (leftSum == totalSum - leftSum - nums[i]) {
        return leftSum;
      }
    }
    if (leftSum == totalSum - leftSum - nums[i]) {
      return i;
    }
    leftSum += nums[i];
  }
  return temp;
}
