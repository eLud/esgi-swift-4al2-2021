//
//  SymbolListView.swift
//  NavigationDemo
//
//  Created by Ludovic Ollagnier on 11/06/2021.
//

import SwiftUI

struct SymbolListView: View {
    var body: some View {
        List {
            NavigationLink(
                destination: BigSymbolView(symbolName: "flame.fill"),
                label: {
                    SymbolCell(symboleName: "flame.fill")
                })
            NavigationLink(
                destination: BigSymbolView(symbolName: "hare.fill"),
                label: {
                    SymbolCell(symboleName: "hare.fill")
                })
            NavigationLink(
                destination: BigSymbolView(symbolName: "tortoise.fill"),
                label: {
                    SymbolCell(symboleName: "tortoise.fill")
                })
            SymbolCell(symboleName: "tortoise.fill")
        }
        .toolbar(content: {
            ToolbarItemGroup {
                Button(action: {}, label: {
                    Image(systemName: "plus")
                })
                Button(action: {}, label: {
                    Image(systemName: "bandage.fill")
                })
            }
        })
    }
}

struct SymbolListView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolListView()
    }
}
