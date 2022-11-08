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

