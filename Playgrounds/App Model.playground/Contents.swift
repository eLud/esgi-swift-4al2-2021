import UIKit

// Nom des types est capitalisé
struct Meal: Equatable {

    // Nom des propriétés commence par minuscule
    let name: String
    let ingredients: [Ingredient]
    let price: Double // Float 32b, Double 64b
    let pitch: String
    let preciseDescription: String

    //Computed property
    var isVeggie: Bool {
        ingredients.allSatisfy { ingredient -> Bool in
            ingredient.isVeggie
        }
    }
}

struct Ingredient: Equatable {
    let name: String
    let isVeggie: Bool
}

let rice = Ingredient(name: "Rice", isVeggie: true)

class Restaurant {

    let name: String
    let address: String?
    var meals: [Meal]
    let pitch: String

    var mediumMealPrice: Double {
        guard !meals.isEmpty else { return 0.0 }

        let totalPrice = meals.reduce(0.0) { (previousValue, meal) -> Double in
            meal.price + previousValue
        }
        let mediumPrice = totalPrice / Double(meals.count)
        return mediumPrice
    }


    init(name: String, address: String?, pitch: String, meals: [Meal] = []) {
        self.name = name
        self.address = address
        self.pitch = pitch
        self.meals = meals
    }

    func add(_ meal: Meal) {

        guard !meals.contains(meal) else { return }
        meals.append(meal)

//        if !meals.contains(meal) {
//            meals.append(meal)
//        }

    }

    func remove(_ meal: Meal) {

        guard let mealIndex = meals.firstIndex(of: meal) else { return }
        meals.remove(at: mealIndex)


        if let mealIndex = meals.firstIndex(of: meal) {
            meals.remove(at: mealIndex)
        } else {

        }

        //nil coalescing operator
        let index = meals.firstIndex(of: meal) ?? 0

//        meals.removeAll(where: <#T##(Meal) throws -> Bool#>)
    }
}

let resto = Restaurant(name: "", address: nil, pitch: "")
