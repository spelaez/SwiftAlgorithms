//: [Previous](@previous)

import Foundation

public class LinkedListNode<T> {
    var value: T
    var next: LinkedListNode?
    weak var previous: LinkedListNode?

    public init(value: T) {
        self.value = value
    }
}

public class LinkedList<T> {
    public typealias Node = LinkedListNode<T>

    private var head: Node?
    private var tail: Node?

    public var isEmpty: Bool {
        return head == nil
    }

    public var first: Node? {
        return head
    }

    public var last: Node? {
        return tail
    }

    public func append(_ value: T) {
        let newNode = Node(value: value)
        if let lastNode = last {
            newNode.previous = lastNode
            lastNode.next = newNode
            tail = newNode
        } else {
            head = newNode
            tail = newNode
        }
    }

    public var count: Int {
        guard var node = head else {
            return 0
        }

        var count = 1
        while let next = node.next {
            node = next
            count += 1
        }
        return count
    }
    public func node(atIndex index: Int) -> Node {
        if index == 0 {
            return head!
        } else {
            var node = head!.next
            for _ in 1..<index {
                node = node?.next
                if node == nil {
                    break
                }
            }
            return node!
        }
    }

    public subscript(index: Int) -> T {
        let node = self.node(atIndex: index)
        return node.value
    }
}

let list = LinkedList<String>()
list.isEmpty
list.first
list.append("Hello")
list.isEmpty
list.first!.value
list.last!.value
list.append("World!")
list.first!.value
list.last!.value
list.first!.previous
list.first!.next!.value
list.last!.previous!.value
list.last!.next

list.node(atIndex: 0).value
list.node(atIndex: 1).value

list[0]
list[1]

//: [Next](@next)
