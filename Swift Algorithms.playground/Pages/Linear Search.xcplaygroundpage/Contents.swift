//: [Previous](@previous)

import Foundation

func linearSearch<T: Equatable>(_ array: [T], _ object: T) -> Int? {
    for (index, obj) in array.enumerated() where obj == object {
        return index
    }
    return nil
}

let array = [5,2,4,7]
linearSearch(array, 2)

//: [Next](@next)
