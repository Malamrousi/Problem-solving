// problem link=> https://leetcode.com/problems/middle-of-the-linked-list/description/?envType=problem-list-v2&envId=linked-list&difficulty=EASY
// topic => Linked List
// level => easy
//problem id on leet code=>#876
//day => 6/12/2024


class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}
//from me
class Solution {
  ListNode? middleNode(ListNode? head) {
    // تعريف مؤشرين: واحد يتحرك بسرعة (fastPointer) والآخر بطيء (slowPointer)
    ListNode? fastPointer = head;
    ListNode? slowPointer = head;

    // إذا كانت القائمة فارغة، إرجاع null مباشرة
    if (head == null) return null;

    // التنقل في القائمة باستخدام المؤشرين:
    // - المؤشر السريع يتحرك بعقدتين في كل خطوة.
    // - المؤشر البطيء يتحرك بعقدة واحدة في كل خطوة.
    while (slowPointer != null && fastPointer?.next != null) {
      fastPointer = fastPointer?.next?.next; // المؤشر السريع يتقدم بعقدتين
      slowPointer = slowPointer.next;       // المؤشر البطيء يتقدم بعقدة واحدة
    }

    // عند توقف الحلقة:
    // - المؤشر البطيء سيكون عند العقدة الوسطى.
    return slowPointer;
  }
}

//solution 2 from Codeium
class Solution2 {
  ListNode? middleNode(ListNode? head) {
    int count = 0;               // عداد لتتبع عدد العقد
    ListNode? temp = head;       // مؤقت (temp) للتنقل عبر القائمة

    // الخطوة الأولى: عدّ عدد العقد في القائمة
    while (temp != null) {
      count++;                   // زيادة العداد مع كل عقدة
      temp = temp.next;          // الانتقال إلى العقدة التالية
    }

    // تحديد العقدة الوسطى عن طريق حساب منتصف العدد
    int mid = count ~/ 2;

    // إعادة تعيين المؤقت للبداية
    temp = head;

    // التنقل حتى الوصول إلى العقدة الوسطى
    for (int i = 0; i < mid; i++) {
      temp = temp?.next;         // الانتقال إلى العقدة التالية
    }

    // عند الوصول إلى العقدة الوسطى، إرجاعها
    return temp;
  }
}