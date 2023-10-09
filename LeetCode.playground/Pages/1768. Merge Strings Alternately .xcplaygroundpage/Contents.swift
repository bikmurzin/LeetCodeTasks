import Foundation

class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        print(zip(word1, word2))
        let iterationCount: Int = word1.count >= word2.count ? word1.count : word2.count
        var finalStr: String = ""
        for charIndex in 0..<iterationCount {
            if word1.count >= charIndex + 1 {
                let index = word1.index(word1.startIndex, offsetBy: charIndex)
                finalStr += String(word1[index])
                
            }
            if word2.count >= charIndex + 1 {
                let index = word2.index(word1.startIndex, offsetBy: charIndex)
                finalStr += String(word2[index])
            }
        }
        return finalStr
    }
}

let solution = Solution()
print("Example 1: \(solution.mergeAlternately("abc", "pqr"))")
print("Example 2: \(solution.mergeAlternately("ab", "pqrs"))")
print("Example 3: \(solution.mergeAlternately("abcd", "pq"))")
