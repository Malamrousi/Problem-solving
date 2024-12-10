
// problem link=> https://leetcode.com/problems/valid-parentheses/description/?envType=problem-list-v2&envId=stack
// topic => stack
// level => easy
//problem id on leetcode=>#20
//day => 11/12/2024

void main() {
  Solution solution = Solution();



  print(solution.isValid("()[]{}"));
}

class Solution {
  bool isValid(String s) {
    final stack = [];

    Map<String, String> bracketMap = {")": '(', "}": "{", "]": "["};

    for (var char in s.split('')) {
      if (bracketMap.containsValue(char)) {
        stack.add(char);
      } else if (bracketMap.containsKey(char)) {
        if (stack.isEmpty || stack.removeLast() != bracketMap[char]) {
          return false;
        }
      }
    }
    ;
    return stack.isEmpty;
  }
}

//"()[]{}"

class Solution2 {
  bool isValid(String s) {
    String d1 = '()';
    String d2 = '{}';
    String d3 = '[]';
    while (s.isNotEmpty) {
      if (s.contains(d1)) {
        s.replaceAll(d1, '');
      } else if (s.contains(d2)) {
        s.replaceAll(d2, '');
      } else if (s.contains(d3)) {
        s.replaceAll(d3, '');
      } else {
        return false;
      }
    }
    return true;
  }
}
