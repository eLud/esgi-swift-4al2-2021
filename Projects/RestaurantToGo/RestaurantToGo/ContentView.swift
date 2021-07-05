//
//  ContentView.swift
//  RestaurantToGo
//
//  Created by Ludovic Ollagnier on 14/05/2021.
//

import SwiftUI

struct ContentView: View {

    @State private var mealName: String = "Commenda"
    @State private var isVeggie = false
    @State private var numberOfItems = 1

    let mealIngredients = "Sauce tomate, mozzarella, roquette"
    let mealPrice: Double = 15

    @EnvironmentObject var userData: UserData

    var body: some View {
        VStack(alignment: .leading) {
            Image(systemName: "hare.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
            MealNameView(mealName: mealName, mealIngredients: mealIngredients)
                .padding(.horizontal)
            Spacer()
            PayButton(numberOfItems: $numberOfItems)
        }
    }
}

struct VeggieView: View {

    @Binding var isVeggie: Bool

    var body: some View {
        HStack {
            Image(systemName: "leaf")
                .foregroundColor(isVeggie ? .green : .red)
            Toggle(isOn: $isVeggie, label: {
                Text("Is Veggie")
            })
        }
    }
}

extension View {

    func roundedBackground(color: Color) -> some View {
        self.padding()
            .background(color)
            .cornerRadius(8)
            .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserData())
    }
}
