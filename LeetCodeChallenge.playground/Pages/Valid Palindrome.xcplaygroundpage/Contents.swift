import Foundation

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let chars = Array(s.replacingOccurrences(of: " ", with: "").components(separatedBy: CharacterSet.alphanumerics.inverted).joined().lowercased())
        for i in 0..<chars.count/2 {
            if chars[i] != chars[chars.count - 1 - i] {
                return false
            }
        }
        return true
    }
}
