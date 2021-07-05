//
//  BigSymbolView.swift
//  NavigationDemo
//
//  Created by Ludovic Ollagnier on 11/06/2021.
//

import SwiftUI

struct BigSymbolView: View {

    let symbolName: String

    var body: some View {
        Image(systemName: symbolName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
            .navigationTitle(symbolName)
            .toolbar(content: {
                Button("Fav") {

                }
            })
    }
}

struct BigSymbolView_Previews: PreviewProvider {
    static var previews: some View {
        BigSymbolView(symbolName: "flame.fill")
    }
}
