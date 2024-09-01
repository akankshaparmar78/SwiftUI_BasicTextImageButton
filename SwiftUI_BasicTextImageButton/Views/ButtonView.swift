//
//  ButtonView.swift
//  SwiftUI_BasicTextImageButton
//
//  Created by apple on 29/08/24.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        VStack {
            Button(action: {
                // Action to perform when the button is pressed
                print("Button pressed!")
            }) {
                Text("Click Me!") // Button text
                    .font(.headline) // Font size and style
                    .foregroundColor(.white) // Text color
                    .padding() // Padding around the text
                    .background(Color.blue) // Background color
                    .cornerRadius(10) // Rounded corners
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.black, lineWidth: 2) // Border
                    )
            }
            .shadow(radius: 5) // Shadow effect
        }
        .padding()
    }
}

#Preview {
    ButtonView()
}
