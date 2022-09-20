import UIKit

var greeting = "Day 12: Optionals"

/// Optionals are Swift's way of handling null values which are noted as nil. This is great for information that may not be availble in a network call for JSON or when the information maybe uncertain or unknown like a persons age, city, or hobbies.
/// Why We Use Optionals - https://www.youtube.com/watch?v=7a7As0uNWOQ

var name: String? = nil

if let unwrapped = name {
    print("\(unwrapped.count) letter(s)")
} else {
    print("missing name.")
}

/// Use if let if you just want to unwrap some optionals, but prefer guard let if you’re specifically checking that conditions are correct before continuing.

/// Force Unwrap ! when values are certain. For example the values are set when the instance is created.

/// Implicitly unwrapped optionals like var num: Int! = nil is used when we are certain it will have a value by the time of use. Don't have sfety checks

/// Optional Chaining will stop if a value is nil otherwise it'll continue through the chain

let shoppingList = ["eggs", "tomatoes", "grapes"]
let firstItem = shoppingList.first?.appending(" are on my shopping list")
print(firstItem)

/// Optional try
/// Failable initializers give us the opportunity to back out of an object’s creation if validation checks fail.

var hasForcePowers = "true"
let convertedHasForcePowers = Bool(hasForcePowers)

/// Typecasting to convert one object to another.

func process(order: String) {
    print("OK, I'll get your \(order).")
}
let pizzaRequest: String! = "pizza"
process(order: pizzaRequest)
