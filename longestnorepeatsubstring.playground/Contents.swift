///https://leetcode-cn.com/problems/Longest-Substring-Without-Repeating-Characters/

import UIKit

var str = "Hello, playground"

class Solution {
    
    func lnps(_ s:String) -> Int {
        var max = 0
        var left = 0, right = 0
        var map:[Character:Int] = [:]
        if s.count == 0 {
            return 0
        }
        
        for char in s {
            
            if let tt = map[char] {
                if tt >= left { //
                    left = tt+1
                }
            }
            map[char] = right
            
            max = max > (right-left+1) ? max : (right-left+1)

            print("----left:\(left),right:\(right),max:\(max)")

            right += 1
        }

        return max;
    }
    
    
}


let ss = Solution()
ss.lnps("pwwkew")
