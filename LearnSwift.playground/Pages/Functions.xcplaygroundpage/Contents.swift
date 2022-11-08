import UIKit

//func greet(person: String, day: String) -> String {
//    return "Hello \(person), today is \(day)."
//}
//
//greet(person: "Francisco", day: "Tuesday")


//
//
// - Ready Player 1
//
// Remvove the day parameter. Add a parameter to include today's lunch
// special in the greeting
//

func greet(person: String, lunchSpecial: String) -> String {
    return "Hello \(person), today's lunch speical is \(lunchSpecial)."
}

greet(person: "Francisco", lunchSpecial: "Turkey and Gravy")


// Argument Labels and Parameter Names

func someFunction(firstParameterName: Int, secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters
}
someFunction(firstParameterName: 1, secondParameterName: 2)

func someFuctionToo(argumentLabel parameterName: Int) {
    // In the function body, parameterName refers to the argument value
    // for the parameter.
}

func greet(person: String, from homeTown: String) -> String {
    return "Hello \(person)! Glad you could visit from \(homeTown)"
}

greet(person: "Francisc", from: "Hollister")

// Add an argument label of "to" to the "person" parameter name,
// and update the "greet method accordingly


func greet(to person: String, from homeTown: String) -> String {
    return "Hello \(person)! Glad you could visit from \(homeTown)"
}

greet(to: "Francisco", from: "Gonzales")

// Default parameter Values
func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {}
someFunction(firstParameterName: 3, secondParameterName: 6)

someFunction(parameterWithoutDefault: 4)


//
// Advanced; Function Types
//

// Every function has a specific type, made up of the parameter types and the return type of the function

//func addTwoInts(_ a: Int, _ b: Int) -> Int{
//    return a + b
//}

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int{
    return a * b
}

// The type of both of these functions is (Int, Int) -> Int. This can be read as:
//
// "A function that has two parameters, both of type Int, and that returns a value of type Int."

// Here's another example, for the function with no parameters or return value:

func printHelloWorld() {
    print("Hello, world")
}


//Note: The type of this functions is () -> Void,
//      or "a functions that has no parameters, and return Void."
//      Which means even though there is no return, the type is still of type void.


// Using Function Types

// Functions can be assigned types.

func addTwoInts(_ a: Int, _ b: Int) -> Int{
    return a + b
}

addTwoInts(20, 20)

var mathFunction: (Int, Int) -> Int = addTwoInts

// Functions as parameters

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool{
    return number < 10
}

var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)


// - Ready Player 1
//
// Write a function for above matchers that returns true if any numbers between 1 and 10(inclusive)
//
// [20, 19, 7, 12]
// [20, 19, 12]

func betweenOneAndTen(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func checkNumber(number: Int) -> Bool{
    return number <= 10;
}


var numbersTwo = [20, 19, 12]
betweenOneAndTen(list: numbersTwo, condition: checkNumber)
