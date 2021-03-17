//
//  ContactTracer.swift
//  DemoSwiftUI
//
//  Created by Ludovic Ollagnier on 16/03/2021.
//

import Foundation

struct ContactTracer {

    var contacts: [Contact]

    mutating func add(contact: Contact) {
        contacts.append(contact)
    }
}
