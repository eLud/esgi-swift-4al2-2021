//
//  DemoSwiftUIApp.swift
//  Shared
//
//  Created by Ludovic Ollagnier on 16/03/2021.
//

import SwiftUI

@main
struct DemoSwiftUIApp: App {

    @State private var tracer = ContactTracer(contacts: [])

    var body: some Scene {
        WindowGroup {
            AppNavigationRootView(tracer: $tracer)
        }
    }
}
