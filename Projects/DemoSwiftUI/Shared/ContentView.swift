//
//  ContentView.swift
//  Shared
//
//  Created by Ludovic Ollagnier on 16/03/2021.
//

import SwiftUI

struct ContentView: View {

    @State private var name: String = ""

    var body: some View {
        HStack {
            TextField("Contact name", text: $name)
            Button("Valider") {
                let newContact = Contact(name: name, date: Date())
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
