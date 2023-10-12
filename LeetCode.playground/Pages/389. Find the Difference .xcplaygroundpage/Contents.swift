//: [Previous](@previous)

import Foundation

class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var stringS: String = s
        
        let extraCharacter = t.first(where: {
            let result = !stringS.contains($0)
            
            if let index = stringS.firstIndex(of: $0) {
                stringS.remove(at: index)
            }
            return result
        })
        return extraCharacter!
    }
}


let solution = Solution()
solution.findTheDifference("a", "aa")
