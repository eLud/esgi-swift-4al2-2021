import UIKit

// Stock
let name = "AAPL" // Constante
var value = 134.50 // Variable

//value = "trente"
//name = "trente"

// Explicit types
let userName: String = "Ludovic"
let id: Int = 12
var lastLogin: Date = Date()

var score: Double = 0 // Int

let a = 5
let b = 2
let c = a / b
let preciseC = Double(a) / Double(b)
// alt (option) clic sur le nom

print(c)

struct Odometer {

    var count: Int = 0

    mutating func increment() {
        count += 1
    }

    mutating func reset() {
        count = 0
    }

    func printMileage() {
        print(count)
    }

//    init(count: Int) {
//        self.count = count
//    }
//
//    init() {
//        count = 0
//    }
}

let odo1 = Odometer()
print(odo1.count)

var odo2 = Odometer(count: 100)
print(odo2.count)

odo1.printMileage()

