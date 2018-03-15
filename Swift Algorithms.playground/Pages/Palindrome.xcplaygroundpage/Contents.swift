//: [Previous](@previous)

import Foundation

var n = 1210121

var palindrome = true
var divisor = 1

while (n / divisor) >= 10 {
    divisor *= 10
}

while (n != 0) {
    let leading = n / divisor
    let trailing = n % 10

    if leading != trailing { palindrome = false }

    n = (n % divisor) / 10

    divisor = divisor / 100
}


print(palindrome)

//: [Next](@next)
