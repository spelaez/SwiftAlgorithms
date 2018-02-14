//: [Previous](@previous)

import Foundation

//recursive
func binarySearch<T: Comparable>(_ a: [T], key: T, range: Range<Int>) -> Int? {
  if range.lowerBound >= range.upperBound {
    //If we get here, then the search key is not present in the array.
    return nil
  }
  //Calculate where to split the array.
  let midIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2

  if a[midIndex] > key {
    return binarySearch(a, key: key, range: range.lowerBound ..< midIndex)
  } else if a[midIndex] < key {
    return binarySearch(a, key: key, range: midIndex + 1 ..< range.upperBound)
  }
  //If we get here, then we've found the search key!
  return midIndex
}

func binarySearch<T: Comparable>(_ a: [T], key: T) -> Int? {
  var lowerBound = 0
  var upperBound = a.count
  while lowerBound < upperBound {
    let midIndex = lowerBound + (upperBound - lowerBound) / 2
    if a[midIndex] == key {
      return midIndex
    } else if a[midIndex] < key {
      lowerBound = midIndex + 1
    } else {
      upperBound = midIndex
    }
  }
  return nil
}

let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]
binarySearch(numbers, key: 43, range: 0 ..< numbers.count)  // gives 13
binarySearch(numbers, key: 43)

//: [Next](@next)
