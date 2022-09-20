import UIKit

var greeting = "Day 10: Classes"

class Animal {
    func statement() {
        print("I am an animal")
    }
}

class Dog: Animal {
    func sound() {
        print("the sound I make is WOOF!")
    }
}

class Teacup: Dog {
    func size() {
        print("I am less than 10lbs periot")
    }
}

class Micro: Teacup {
    func portable() {
        print("you can take me anywhere but you might crush me if you're not careful")
    }
    
    deinit {
        print("sorry but my life span is really short. it was a nice 3 years xoxo")
    }
}

//let microPincher = Micro()
//microPincher.statement()
//microPincher.sound()
//microPincher.size()
//microPincher.portable()

for _ in 1...3 {
    let microPincher = Micro()
    microPincher.portable()
}
