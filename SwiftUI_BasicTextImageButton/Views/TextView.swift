//
//  TextView.swift
//  SwiftUI_BasicTextImageButton
//
//  Created by apple on 29/08/24.
//

import SwiftUI


struct TextView: View {
    @State private var text: String = "Hello in Learning"

    var body: some View {
        VStack {
            Text("Hello, SwiftUI!") // The text you want to display
                .font(.title) // Font size and style
                .foregroundColor(.white) // Text color
                .padding() // Padding inside the Text view
                .background(Color.yellow) // Background color
                .cornerRadius(10) // Corner radius for the background
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 4) // Border that matches the background
                )
                .shadow(radius: 5) // Shadow effect
        }
        .padding() // Padding around the VStack
    }
}

#Preview {
    TextView()
}


