import UIKit

var str = "Hello, playground"

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    
    func begin() {
        var ttt = ListNode.init(2)
        var ttt1 = ListNode.init(4)
        var ttt2 = ListNode.init(3)
//        var ttt3 = ListNode.init(9)
//        var ttt4 = ListNode.init(9)
        ttt.next = ttt1
        ttt1.next = ttt2
//        ttt2.next = ttt3
//        ttt3.next = ttt4
        
        var ttt5 = ListNode.init(5)
        var ttt6 = ListNode.init(6)
        var ttt7 = ListNode.init(4)
        ttt5.next = ttt6
        ttt6.next = ttt7
        
        var xxx = addTwoNumbers(ttt, ttt5)
        
        while xxx != nil {
            print("xxx:\(String(describing: xxx?.val))")
            xxx = xxx?.next
        }
        
    }
    
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        var inc = 0
        let first = ListNode.init()
        var l11 = l1, l22 = l2, current = first
        
        while (l11 != nil || l22 != nil || inc > 0) {
            let sum = (l11?.val ?? 0) + (l22?.val ?? 0) + inc
            let index = ListNode.init()
            inc = sum >= 10 ? 1 : 0
            let rea = sum % 10
            
            
            index.val = rea
            
            current.next = index
            current = current.next!;

            l11 = l11?.next
            l22 = l22?.next
        }

        return first.next
        
    }
}


var ssss = Solution()
ssss.begin()

