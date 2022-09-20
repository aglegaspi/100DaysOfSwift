import UIKit

var greeting = "Day 11: Protocols & Extensions"

protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

var jasonHernandez = User(id: "1234")
var carolOstrow = User(id: "3321")

displayID(thing: jasonHernandez)
displayID(thing: carolOstrow)


/// one protocol can inherit several protocols
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    mutating func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }

struct HiredPerson: Employee {
    var trainingDays = 14
    func calculateWages() -> Int {
        return (7*40) * 2
    }
    
    mutating func study() {
        if trainingDays > 0 {
            trainingDays -= 1
        }
        print("Has \(trainingDays) days of training left")
    }
    
    func takeVacation(days: Int) {
        print("you have \(days) days of vacation with the limit of 2 weeks of vacation within a month.")
    }
}

var jeremeySylvester = HiredPerson()
jeremeySylvester.study()
jeremeySylvester.study()
jeremeySylvester.study()
