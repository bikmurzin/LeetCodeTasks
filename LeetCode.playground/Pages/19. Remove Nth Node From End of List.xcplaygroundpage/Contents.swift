

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var prev: ListNode? = nil
        var node: ListNode? = head
        
        // Если список пуст, или в списке только один элемент
        if head == nil || head?.next == nil { return nil }
        
        // Если требуется удалить последний элемент
        if n == 1 {
            while node?.next != nil {
                prev = node
                node = node?.next
            }
            prev?.next = nil
            return head
        }
        
        // Подсчет количества элементов списка
        var countOfNodes = 1
        while node?.next != nil {
            node = node?.next
            countOfNodes += 1
        }
        
        // Вычисление индекса элемента для удаления
        let indexElementToRemove = countOfNodes - n
        
        node = head
        
        // Если требуется удалить первый элемент
        if indexElementToRemove == 0 {
            node = node?.next
            return node
        }
        
        // Все остальные случаи
        for i in 0..<indexElementToRemove {
            print("Step \(i) with indexElementToRemove = \(indexElementToRemove)")
            if node?.next != nil {
                prev = node
                node = node?.next
            }
        }
        prev?.next = node?.next
        return head
    }
}


