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

class Vehicule {

    var name: String
    var numberOfWheels: Int

    init(name: String, numberOfWheels: Int) {
        self.name = name
        self.numberOfWheels = numberOfWheels
    }
}

class Car: Vehicule {

    // Toutes les propriétés doivent être initialisées
    var test: Int = 0
}

let myCar = Car(name: "", numberOfWheels: 4)

// Fonctions

// Simple
func doSomething() {
    print("Do something")
}

doSomething()
doSomething()

// Avec paramètres
func multiply(_ firstNumber: Int, by multiplier: Int) {
    let result = firstNumber * multiplier
    print(result)
}

// Argument label
multiply(5, by: 2)
// multiply 5 by 2

var array = ["Toto"]
array.append("Titi")

var intArray = [0, 1]
array.remove(at: 0)
intArray.insert(2, at: 0)
intArray.append(contentsOf: [2,3,4])

func sayHi(to name: String = "you") {
    print("Hi, \(name)")
}

sayHi(to: "Ludovic")
sayHi()

print("A", "B", "C", separator: "/")
print("A", "B", "C", separator: "/", terminator: "!")

// Avec retour de valeur
func add(_ firstNumber: Int, to secondNumber: Int) -> Int {
    firstNumber + secondNumber
}

let resultAdd = add(5, to: 5)

func substract(_ first: Int, to second: Int) -> (op1: Int, op2: Int, result: Int) {
    let result = second - first
    return (first, second, result)
}

let resultSub = substract(5, to: 10)
print(resultSub.result)
print(resultSub)
