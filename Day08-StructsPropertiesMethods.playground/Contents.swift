import UIKit

var greeting = "Day 8"

/// Structs let us create our own data types. They can also include properties and functions.

struct RecordingArtist {
    var name: String
}

var newArtist = RecordingArtist(name: "Le Tuce C'Baj")

print(newArtist.name)

/// NOTE: use Tuples mostly for one offs and to return multiple values from a function. Tuples are like anonymous Structs.


// MARK: - COMPUTED PROPERTY

struct Sport {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olypmic sport"
        }
    }
}

let tennis = Sport(name: "Tennis", isOlympicSport: true)
print(tennis.olympicStatus)

/// Computed properties are values that are recomputed every time it's called. Is like a function call that happens to belong to your struct.
/// If your property's value replies on the values of other properties then computed properties are useful. they always take into account the latest state.
///  Lazy properties are for rarely read stored properties for performance issues.


//MARK: - PROPERTY OBSERVERS
/// This will run some code everytime the property changes such as the amount

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading Data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100


//MARK: - FUNCTIONS

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}

let nyc = City(population: 10_000_000)
nyc.collectTaxes().formatted()
