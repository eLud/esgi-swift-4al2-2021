//
//  RestaurantToGoApp.swift
//  RestaurantToGo
//
//  Created by Ludovic Ollagnier on 14/05/2021.
//

import SwiftUI

@main
struct RestaurantToGoApp: App {

    @StateObject var userData = UserData()

    var body: some Scene {
        WindowGroup {
            VStack {
                ContentView()
            }
            .environmentObject(userData)
        }
    }
}

class UserData: ObservableObject {

    @Published var userName: String = "Ludovic"
    @Published var accountBalance: Double = 50
}
