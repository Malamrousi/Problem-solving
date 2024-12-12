
// problem link=> https://leetcode.com/problems/baseball-game/solutions/?envType=problem-list-v2&envId=stack&difficulty=EASY
// topic => stack
// level => easy
//problem id on leetcode=>#682
//day => 13/12/2024



class Solution {
  int calPoints(List<String> operations) {
    List<int> record = [];

    for (String op in operations) {
      if (op == "C") {
        if (record.isNotEmpty) {
          record.removeLast();
        }
      } else if (op == "D") {
        if (record.isNotEmpty) {
          record.add(record.last * 2);
        }
      } else if (op == "+") {
        if (record.length >= 2) {
          record.add(record[record.length - 1] + record[record.length - 2]);
        }
      } else {
        record.add(int.parse(op));
      }
    }
    return record.fold(0, (a, b) => a + b);
  }
}
