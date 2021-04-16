import UIKit

// Nom des types est capitalisé
struct Meal {

    // Nom des propriétés commence par minuscule
    let name: String
    let ingredients: [Ingredient]
    let price: Double // Float 32b, Double 64b
    let pitch: String
    let preciseDescription: String
    let isVeggie: Bool
}

struct Ingredient {

    let name: String
    let isVeggie: Bool
}

let rice = Ingredient(name: "Rice", isVeggie: true)
