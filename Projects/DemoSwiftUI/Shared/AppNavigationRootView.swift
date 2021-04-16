//
//  AppNavigationRootView.swift
//  DemoSwiftUI
//
//  Created by Ludovic Ollagnier on 17/03/2021.
//

import SwiftUI

struct AppNavigationRootView: View {

    @Binding var tracer: ContactTracer

    var body: some View {
        TabView {
            ContentView(tracer: $tracer)
                .tabItem {
                    Image(systemName: "textformat.abc")
                    Text("Saisie")
                }
            ContactListView(tracer: $tracer)
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Liste")
                }
        }
    }
}

//struct AppNavigationRootView_Previews: PreviewProvider {
//    static var previews: some View {
//        AppNavigationRootView(tracer: <#Binding<ContactTracer>#>)
//    }
//}
