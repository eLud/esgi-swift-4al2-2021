//
//  SymbolCell.swift
//  NavigationDemo
//
//  Created by Ludovic Ollagnier on 11/06/2021.
//

import SwiftUI

struct SymbolCell: View {

    let symboleName: String

    var body: some View {
        HStack {
            Text(symboleName)
            Spacer()
            Image(systemName: symboleName)
        }
    }
}


struct SymbolCell_Previews: PreviewProvider {
    static var previews: some View {
        SymbolCell(symboleName: "flame.fill")
    }
}
