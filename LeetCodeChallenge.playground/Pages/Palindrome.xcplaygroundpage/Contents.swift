
import Foundation

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let strX = String(x)
        let reversedX = String(strX.reversed())
        if (reversedX != nil && reversedX == strX) {
            return true
        }else{
            return false
        }
    }
}
