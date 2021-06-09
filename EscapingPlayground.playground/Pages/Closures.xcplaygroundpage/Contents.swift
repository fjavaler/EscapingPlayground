import UIKit

// Non-closure method.
func isPostiveValue(number: Int) -> Bool {
  if number > 0 {
    return true
  }
  return false
}

let value1 = isPostiveValue(number: -3)

// Closure equivalent.
let isPositive: ( (Int) -> (Bool) ) = { number in
  if number > 0 {
    return true
  }
  return false
}

let value2 = isPositive(2)

// Adding closure method.
let addTwoWholeNumbers: ((Int, Int) -> Int) = { firstNumber, secondNumber in
  return firstNumber + secondNumber
}

let sum = addTwoWholeNumbers(100,2)

// Append three strings method.
let appendThreeStrings: ((String, String, String) -> String) = { firstString, secondString, thirdString in
  return firstString + secondString + thirdString
}

let newString = appendThreeStrings("This", " is a ", "new sentence.")

// Non-closure method.
let listOfNumbers = [1,2,3,4,5,10]
func filterGreaterThanValue(value: Int, numbers: [Int]) -> [Int] {
  var filteredList: [Int] = []
  
  for number in numbers {
    if number > value {
      filteredList.append(number)
    }
  }
  
  return filteredList
}

let filteredList = filterGreaterThanValue(value: 3, numbers: listOfNumbers)

// Closure equivalent.
func filterWithPredicateClosure(closure: (Int) -> Bool, numbers: [Int]) -> [Int] {
  var filteredNumbers = [Int]()
  for number in numbers {
    if closure(number) {
      filteredNumbers.append(number)
    }
  }
  return filteredNumbers
}

let filteredList2 = filterWithPredicateClosure(closure: { number in
  return number < 5
}, numbers: listOfNumbers)

// Set up predicate.
func greaterThanThreePredicate(value: Int) -> Bool {
  return value > 3
}

// Use the predicate.
let filteredList3 = filterWithPredicateClosure(closure: greaterThanThreePredicate, numbers: listOfNumbers)

func divisableByFive(value: Int) -> Bool {
  return value % 5 == 0
}

let filteredList4 = filterWithPredicateClosure(closure: divisableByFive, numbers: listOfNumbers)

// Non-closure.
func sayHello() {
  print("Hello!")
}

sayHello()

// Closure equivalent.
let sayHelloClosure: () -> Void = {
  print("Hello, closure!")
}

sayHelloClosure()

// Non-closure.
func sayHello(to name: String) {
  print("Hello, \(name)!")
}

sayHello(to: "Fred")

// Closure equivalent.
let sayHelloClosure2: (String) -> Void = { name in
  print("Hello, \(name)!")
}

sayHelloClosure2("Fred")

// Non-closure that returns something.
func sum(a: Int, b: Int) -> Int {
  a + b
}

let answer = sum(a: 5, b: 7)

// Closure equivalent.
let sumClosure: (Int, Int) -> Int = { firstNum, secondNum in
  return firstNum + secondNum
}

sumClosure(9, -3)

// Closures as Function Parameters.
func sayHello(to name: String, finallySayIt: (String) -> ()) {
  let newName = name.uppercased()
  finallySayIt(newName)
}

//// Closure equivalent #1.
//sayHello(to: "Stewart", finallySayIt: { name in
//  print("Hello, \(name)")
//})
//
//// Closure equivalent #2.
//sayHello(to: "Stewart") { name in
//  print("Hello, \(name)")
//}

// Closure equivalent #3.
let reallySayIt: (String) -> () = { name in
  print("Hello, \(name)")
}

sayHello(to: "Stewart", finallySayIt: reallySayIt)

// Escaping closures
func sayHelloEscaping(to name: String, finallySayIt: @escaping (String) -> ()) {
  let newName = name.uppercased()
  DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
    finallySayIt(newName)
  }
}

sayHello(to: "Stewart") { name in
  print("Hello, \(name) (escaping).")
}
