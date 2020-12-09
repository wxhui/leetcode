import UIKit

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
                return [index, v]
            } else {
                map[tt] = index
            }
            index += 1
            print("------\(map)")
        }
        return []
    }
    
    func twoSum1(_ nums:[Int], _ target:Int) -> [Int] {
        var map = [Int:Int]()
//        var index = 0
        for (index, num) in nums.enumerated() {
            let tt = target - num
            if let v = map[num]  {
                return [index, v]
            } else {
                map[tt] = index
            }
//            index += 1
//            print("------\(map)")
        }
        return []
    }

}

