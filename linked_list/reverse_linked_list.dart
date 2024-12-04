// problem link=> https://leetcode.com/problems/reverse-linked-list/?envType=problem-list-v2&envId=linked-list&difficulty=EASY
// topic => Linked List
// level => easy
//problem id on leet code=>#206
//day => 4/12 /2024

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? reverseList(ListNode? head) {
    // تعريف المؤشرات الثلاثة المستخدمة
    ListNode? current = head; // المؤشر الحالي يبدأ عند رأس القائمة
    ListNode? prev = null; // المؤشر السابق يبدأ بـ null لأن الرأس الحالي لا يوجد قبله عقدة
    ListNode? next; // لتخزين العنصر التالي مؤقتًا أثناء تغيير الاتجاه

    // حلقة تمر عبر العقد واحدة تلو الأخرى
    while (current != null) {
      // حفظ المؤشر التالي مؤقتًا قبل كسر الرابط
      next = current.next; // تخزين العنصر التالي 

      // عكس المؤشر: توجيه العنصر الحالي ليشير إلى العنصر السابق
      current.next = prev;

      // تحديث المؤشرات: 
      prev = current; // تحريك المؤشر السابق ليصبح العقدة الحالية
      current = next; // الانتقال إلى العقدة التالية المحفوظة
    }

    // عند انتهاء الحلقة، المؤشر 'prev' يشير إلى الرأس الجديد
    return prev;
  }
}

