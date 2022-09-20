import UIKit
import Darwin

var greeting = "Hello, playground"
greeting = "Goodbye"

var multiLine = """
Hello
I am Alex
Your Software Engineer for the day
"""

let earthquakeStrengths = Set([1, 1, 2, 2])

enum Mood: Int {
    case happy
    case sad
    case grumpy
    case sleepy
    case hungry
}

Mood.happy.self

enum MoodEmoji: String {
    case happy = "😁"
}

var result = 11 % 6

let weeks = 465 / 7
let days = 465 % 7
print("There are \(weeks) weeks and \(days) days until the event.")

let number = 465
let isMultiple = number.isMultiple(of: 5)

// When your skills grow you’ll find you can create your own custom operators if you want to, and even modify Swift’s existing operators.


enum Sizes: Comparable {
    case small
    case medium
    case large
}

let first = Sizes.small
let second = Sizes.large
print(first < second)
// That will print “true”, because small comes before large in the enum case list.

let isAvailable: Bool = false

if isAvailable {
    print("Success")
} else {
    print("Failure")
}


// SWITCH STATEMENTS
let weather = "sunny"
//We can use a switch block to print one of four different messages:

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

repeat {
    print("This is false")
} while false


let numbers = [1, 2, 3, 4, 5]
var random: [Int]

repeat {
    random = numbers.shuffled()
} while random == numbers


// EXITING LOOPS
var countdown = 10

while countdown >= 0 {
    if countdown == 3 {
        print("found what I need. now exiting the loop")
    }
    
    countdown -= 1
}


var people = 2
while people < 10 {
    people += 2
    if people == 10 {
        print("We got 10 people.")
    }
}

// EXITING MULTIPLE LOOPS
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}


var hoursStudied = 0
var goal = 10
var running = 0

repeat {
    hoursStudied += 1
    if hoursStudied > 4 {
        
        running += 1
        goal -= 1
        print("goal decreases to: \(goal)")
        print("iterates \(running) times")
        print("hours studied: \(hoursStudied) hours")
        continue
    }
    print("I've studied for \(hoursStudied) hours")
} while hoursStudied < goal

for i in 1...100 {
    if 100 % i == 0 {
        print("100 divides evenly into \(i)")
    } else {
        continue
    }
}
