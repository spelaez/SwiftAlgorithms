//: Playground - noun: a place where people can play

import UIKit

extension Array {

  func insertionSort(_ isOrderedBefore: (Element, Element) -> Bool) -> [Element] {
    var a = self
    for x in 1..<a.count {
      var y = x
      let temp = a[y]
      while y > 0 && isOrderedBefore(temp, a[y - 1]) {
        a[y] = a[y - 1]
        y -= 1
      }
      a[y] = temp
    }
    return a
  }
}

var list = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26]
let sortedList = list.insertionSort(<)
