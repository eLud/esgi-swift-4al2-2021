//
//  ContentView.swift
//  RestaurantToGo
//
//  Created by Ludovic Ollagnier on 14/05/2021.
//

import SwiftUI

struct ContentView: View {

    @State var mealName: String = "Pizza"
    @State var isVeggie = false

    var body: some View {
        VStack {
            Text(mealName)
                .roundedBackground(color: .blue)
            TextField("Meal Name", text: $mealName)
            Image(systemName: "xmark")
                .roundedBackground(color: .red)
                .background(Color.yellow)
            VeggieView(isVeggie: $isVeggie)
            Toggle(isOn: $isVeggie, label: {
                Text("Is Veggie")
            })
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
    }
}
