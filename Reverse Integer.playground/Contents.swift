///https://leetcode-cn.com/problems/reverse-integer/

import UIKit

var str = "Hello, playground"

class Solution {
    func reverse(_ x: Int) -> Int {
        
        var t = x
        var tmp = 0
        while t != 0 {
            tmp = tmp*10 + t%10
            t = t/10
        }
        
        if tmp > Int32.max || tmp < Int32.min {
            tmp = 0
        }
        
        print(tmp)
        
        return 0
    }
}


let xx = Solution()
xx.reverse(1534236469)
