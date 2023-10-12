//: [Previous](@previous)

import Foundation

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard let index = haystack.range(of: needle)?.lowerBound else {
            return -1
        }
        return haystack.distance(from: haystack.startIndex, to: index)
    }
}

let solution = Solution()
solution.strStr("avcf", "vc")
