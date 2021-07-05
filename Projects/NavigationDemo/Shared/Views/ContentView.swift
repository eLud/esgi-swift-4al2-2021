//
//  ContentView.swift
//  Shared
//
//  Created by Ludovic Ollagnier on 11/06/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Hello World")
                .tabItem {
                    Text("Hello Screen")
                    Image(systemName: "hand.wave.fill")
                }
            Color.red
                .tabItem {
                    Text("Red Screen")
                    Image(systemName: "flame.fill")
                }
            BackgroundColoredTextView(text: "Hello Green")
                .tabItem {
                    Text("Green Hello")
                    Image(systemName: "leaf.fill")
                }
            NavigationView {
                SymbolListView()
                    .navigationTitle("Symbol list")
            }.tabItem {
                Text("Symbols")
                Image(systemName: "drop.fill")
            }
            SymbolListView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
