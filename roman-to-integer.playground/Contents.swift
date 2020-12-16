//罗马数字https://leetcode-cn.com/problems/roman-to-integer/
import UIKit

var str = "Hello, playground"

class Solution {
    func romanToInt(_ s: String) -> Int {
        let nums:[Character:Int] = [
            "I":             1,
            "V":             5,
//            "IV":            4,
            "X":             10,
//            "IX":            9,
            "L":             50,
//            "XL":            40,
            "C":             100,
//            "XC":            90,
            "D":             500,
//            "CD":            400,
            "M":             1000,
//            "CM":            900
            ]
        var count = 0
        var pre = 0
        for char in s {
            if let t = nums[char] {
                count += t
                if t > pre {
                    count -= pre*2
                }
                pre = t
            }
        }
        return count
        
    }
}

let tt = Solution()
let nnn = tt.romanToInt("LVIII")
print("total:\(nnn)")
