//
//  BackgroundColoredTextView.swift
//  NavigationDemo
//
//  Created by Ludovic Ollagnier on 11/06/2021.
//

import SwiftUI

struct BackgroundColoredTextView: View {

    let text: String

    var body: some View {
        ZStack {
            Color.green
            Text(text)
        }
    }
}

struct BackgroundColoredTextView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundColoredTextView(text: "Hello")
    }
}
