//: [Previous](@previous)

import Foundation

func minimum<T: Comparable>(_ array: [T]) -> T? {
    guard var minimum = array.first else {
        return nil
    }

    for element in array.dropFirst() {
        minimum = element < minimum ? element : minimum
    }
    return minimum
}

func maximum<T: Comparable>(_ array: [T]) -> T? {
    guard var maximum = array.first else {
        return nil
    }

    for element in array.dropFirst() {
        maximum = element > maximum ? element : maximum
    }
    return maximum
}

let array = [ 8, 3, 9, 4, 6 ]
minimum(array)
maximum(array)

//: [Next](@next)
