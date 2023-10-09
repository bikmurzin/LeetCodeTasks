
import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    var unit = 0
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var list1 = l1
        var list2 = l2
        var finalList: ListNode? = nil
        var newNode: ListNode? = nil
        while list1 != nil || list2 != nil || unit != 0 {
            var number: Int = (list1?.val ?? 0) + (list2?.val ?? 0)
            newNode = ListNode((number + unit) % 10)
            unit = (number + unit) / 10
            if finalList != nil {
                var node = finalList
                while node?.next != nil {
                    node = node?.next
                }
                node?.next = newNode
            } else {
                finalList = newNode
            }
            list1 = list1?.next
            list2 = list2?.next
        }
        return finalList
    }
}


