//
//  MealNameView.swift
//  RestaurantToGo
//
//  Created by Ludovic Ollagnier on 07/06/2021.
//

import SwiftUI

struct MealNameView: View {

    let mealName: String
    let mealIngredients: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(mealName)
                .font(.title)
                .bold()
            Text(mealIngredients)
                .font(.callout)
                .foregroundColor(.gray)
        }
    }
}

struct MealNameView_Previews: PreviewProvider {
    static var previews: some View {
        MealNameView(mealName: "Pizza", mealIngredients: "Tomates, Olives")
    }
}
