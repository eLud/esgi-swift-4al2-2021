import UIKit

// Nom des types est capitalisé
struct Meal: Equatable {

    // Nom des propriétés commence par minuscule
    let name: String
    let ingredients: [Ingredient]
    let price: Double // Float 32b, Double 64b
    let pitch: String
    let preciseDescription: String
    let isVeggie: Bool
}

struct Ingredient: Equatable {
    let name: String
    let isVeggie: Bool
}

let rice = Ingredient(name: "Rice", isVeggie: true)

class Restaurant {

    let name: String
    let address:String
    var meals: [Meal]
    var mediumMealPrice: Double
    let pitch: String

    init(name: String, address: String, pitch: String, meals: [Meal] = []) {
        self.name = name
        self.address = address
        self.pitch = pitch
        self.meals = meals
        mediumMealPrice = 0 // to calculate
    }

    func add(_ meal: Meal) {
        meals.append(meal)
    }

    func remove(_ meal: Meal) {
        if let mealIndex = meals.firstIndex(of: meal) {
            meals.remove(at: mealIndex)
        }
//        meals.removeAll(where: <#T##(Meal) throws -> Bool#>)
    }
}
