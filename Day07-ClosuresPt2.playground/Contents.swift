import UIKit

var greeting = "Hello, playground"

func createInterface(positioning: ([String]) -> Void) {
    print("Creating some buttons")
    let buttons = ["Button 1", "Button 2", "Button 3"]
    positioning(buttons)
}

//createInterface { (buttons: [String]) in
//    for button in buttons {
//        print("I'll place \(button) here...")
//    }
//}

//createInterface { cakes in
//    for cake in cakes {
//        print("Pressed \(cake)")
//    }
//}

//
//func travel(action: (String) -> String) {
//    print("I'm getting ready to go.")
//    let description = action("London")
//    print(description)
//    print("I arrived!")
//}
//travel { (place: String) -> String in
//    return "I'm going to \(place) in my car"
//}

func playSong(_ name: String, notes: () -> String) {
    print("I'm going to play \(name).")
    let playedNotes = notes()
    print(playedNotes)
}
//playSong("Mary Had a Little Lamb") {
//    return "EDCDEEEDDDEGG"
//}

func activateAI(_ ai: () -> String) {
    print("Let's see what this thing can do...")
    let result = ai()
    print(result)
}
//activateAI {
//    return "Come with me if you want to live."
//}

func manipulate(numbers: [Int], using algorithm: (Int) -> Int) {
    for number in numbers {
        let result = algorithm(number)
        print("Manipulating \(number) produced \(result)")
    }
}
//manipulate(numbers: [1, 2, 3]) { number in
//    return number * number
//}

func goShopping(for item: String, decisionHandler: (String) -> Bool) {
    print("I'm going to buy \(item)")
    if decisionHandler(item) == true {
        print("Great! I bought them.")
    } else {
        print("Maybe next time...")
    }
}
//goShopping(for: "shoes") { item in
//    if item == "shoes" {
//        return false
//    } else {
//        return true
//    }
//}


func increaseBankBalance(start: Double, interestCalculator: () -> Double) {
    print("Your current balance is \(start).")
    let interestRate = interestCalculator()
    let withInterest = start * interestRate
    print("You now have \(withInterest).")
}
//increaseBankBalance(start: 200.0) {
//    return 1.01
//}


func travel(place: String, mph: Int, action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action(place, mph)
    print(description)
    print("I arrived!")
}

//travel(place: "London", mph: 500) {
    "I'm going to \($0) at \($1) miles per hour"
}

/// The parameter "action" which is a closure that accepts a two parameters a String and Int must be called within the body in order to execute the closure when the travel function is called. In this case the parameters are set within the body. However, if you wanted pass these values in the call then you would make a String and Int parameter in the function call prior to the action parameter.
//func travel(action: (String,Int) -> String) {
//    print("I'm getting ready to go.")
//    let description = action("Idaho", 300)
//    print(description)
//
//    print("I arrived!")
//}
//
//travel { _,_ in
//    let place = "Frisco"
//    let mph = 500
//    let stmt = "I'm going to \(place) at \(mph) miles per hours"
//    return stmt
//}


func fadeOut(completion: () -> Void) {
    print("Making the screen dim...")
    completion()
}

//fadeOut {
//    print("Screen dimmed. Now I can sleep without the TV being too bright.")
//}

/// this fuction has a parameter that's a closure that will return a Boolean upon being called. This will satisfy the if else statement in the body.
func getTransport(destination: String, method: (String, Int) -> Bool) {
    let maxCost = 10
    let result = method(destination, maxCost)
    if result {
        print("OK, you can travel.")
    } else {
        print("Sorry, you need more money.")
    }
}


//getTransport(destination: "Austin") {
//    print("that'll cost \($1) dollars")
//    switch $0 {
//    case "Austin": return true
//    default: return false
//    }
//}

/// this function is going to return an array of Strings to the closures which will then print a statmento to each person in the array.
func sendNewsletter(getRecipients: () -> [String]) {
    let recipients = getRecipients()
    for person in recipients {
        print("I'm sending an email to \(person)")
    }
}

//sendNewsletter {
//    return ["Liz", "Noemi", "Edisa", "Venus", "Raven"]
//}


func playSong(instrumentClosure: (String, Int) -> Void) {
    let song = "Stairway to Heaven"
    let volume = 11
    print("I'm going to play \(song)...")
    instrumentClosure(song, volume)
}

//playSong { _,vol in print("at volume \(vol)") }

