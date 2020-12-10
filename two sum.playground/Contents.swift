import UIKit

//https://leetcode-cn.com/problems/two-sum  44ms

var str = "Hello, playground"

print("------\(str)")
let s = INIT()

struct INIT {
    init() {
        let sss = twoSum([2,3,7,9], 16)
        print("\(String(describing: sss))")
    }
    func twoSum(_ nums:[Int], _ target:Int) -> [Int] {
        var map = [Int:Int]()
        var index = 0
        for num in nums {
            let tt = target - num
            if let v = map[num]  {
                return [v, index]
            } else {
                map[tt] = index
            }
            index += 1
        }
        return []
    }
}

