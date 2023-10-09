//: [Previous](@previous)

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var number: Int = 0
        if list1 == nil && list2 == nil { return nil}
        else if let unwrList1 = list1, let unwrList2 = list2 {
            if unwrList1.val > unwrList2.val {
                number = unwrList2.val
                print("list2, number: \(number)")
                return ListNode(number, mergeTwoLists(list1, list2?.next))
            } else {
                number = unwrList1.val
                print("list1, number: \(number)")
                return ListNode(number, mergeTwoLists(list1?.next, list2))
            }
        } else {
            number = (list1?.val ?? 0) + (list2?.val ?? 0)
            print("list1 or list2, number: \(number)")
            return ListNode(number, mergeTwoLists(list1?.next, list2?.next))
        }
    }
}
