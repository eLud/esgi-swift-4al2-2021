//
//  PayButton.swift
//  RestaurantToGo
//
//  Created by Ludovic Ollagnier on 07/06/2021.
//

import SwiftUI

struct PayButton: View {

    @Binding var numberOfItems: Int

    var body: some View {
        Button(action: {
            numberOfItems += 1
        }, label: {
            HStack {
                Spacer()
                Text("Ajouter \(numberOfItems) au panier")
                    .bold()
                Spacer()
            }
            .padding()
            .background(Color.black)
            .foregroundColor(.white)
            .padding()
        })
    }
}

struct PayButton_Previews: PreviewProvider {
    static var previews: some View {
        PayButton(numberOfItems: .constant(1))
    }
}
