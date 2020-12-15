//Palindrome Number 回文数#https://leetcode-cn.com/problems/palindrome-number/
import UIKit

var str = "Hello, playground"


class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 10, x >= 0 {
            return true
        }
        if x < 0 {
            return false
        }
        var t = x
        var tmp = 0
        //回文数，不需要全部翻转，只需要翻转，对比之后就可以判断了
        while t > tmp {
            tmp = tmp*10 + t%10
            t = t/10
            print("t:\(t),tmp:\(tmp)")

        }
        return tmp == t || tmp/10 == t
    }
}

var tt = Solution()
print(tt.isPalindrome(121))
