//
//  ContentView.swift
//  Shared
//
//  Created by Ludovic Ollagnier on 16/03/2021.
//

import SwiftUI

struct ContentView: View {

    @State private var name: String = ""
    @Binding var tracer: ContactTracer

    var body: some View {
        VStack {
            HStack {
                TextField("Contact name", text: $name)
                Button("Valider") {
                    let newContact = Contact(name: name, date: Date())
                    tracer.add(contact: newContact)
                    name = ""
                }.foregroundColor(name.isEmpty ? .red : .green)
            }.padding()
        }
    }


}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
