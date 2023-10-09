import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        let numsCount = nums.count
        for i in 0..<numsCount - 1 {
            for j in (i + 1)..<numsCount {
                if (nums[i] + nums[j]) == target {
                    return [i, j]
                }
            }
            
        }
        return[-1, -1]
    }
}
