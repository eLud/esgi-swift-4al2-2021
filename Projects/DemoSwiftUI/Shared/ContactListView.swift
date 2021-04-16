//
//  ContactListView.swift
//  DemoSwiftUI
//
//  Created by Ludovic Ollagnier on 17/03/2021.
//

import SwiftUI

struct ContactListView: View {

    @Binding var tracer: ContactTracer

    var body: some View {
        if tracer.contacts.isEmpty {
            Text("No contacts")
        } else {
            List(tracer.contacts) { contact in
                VStack {
                    Text(contact.name)
    //                Text(contact.date)
                }
            }
        }
    }
}

//struct ContactListView_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            ContactListView()
//            ContactListView()
//                .preferredColorScheme(.dark)
//                .environment(\.sizeCategory, .extraSmall)
//        }
//    }
//}
