import UIKit

var greeting = "Day 13: Swift Review Day 1"

// MARK: - VARIABLES AND CONSTANTS

/// Variable and Constants serve the purposes of storing data.
let name = "Yo Yo"
var person = "Charlie"

// MARK: - TYPES OF DATA

/// String, Int, Float, Double, etc.

var latitude: Double
latitude = 36.166667
// has a massive amount of space to handle big numbers

var longitude: Float
longitude = -86.783333
// cuts the number because it has a limit

// TYPE ANNOTATION -> let data: String = ""
// TYPE INFERENCE -> let data = ""


// MARK: - OPERATORS

var a = 10
a = a + 10
a = a - 1
a = a * a



// MARK: String Interpolation

// combining variables and constants in Strings
var age = 25
"You are \(age) years old. In another \(age) years you will be \(age * 2)."



