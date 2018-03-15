//: [Previous](@previous)

import Foundation

public struct Queue<T> {
    fileprivate var array:Array<T> = [T]()
    public var isEmpty: Bool {
        return array.isEmpty
    }

    public mutating func enqueue(_ element: T) {
        array.append(element)
    }

    public mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        }
        return array.removeFirst()
    }

    public var front: T? {
        return array.first
    }
}

//: [Next](@next)
