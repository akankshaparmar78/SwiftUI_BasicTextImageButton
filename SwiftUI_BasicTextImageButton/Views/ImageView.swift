//
//  ImageView.swift
//  SwiftUI_BasicTextImageButton
//
//  Created by apple on 29/08/24.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack {
            Image("image")
                .resizable() // Makes the image resizable
                .aspectRatio(contentMode: .fill) // Content mode (fill, fit, etc.)
                .frame(width: 200, height: 200) // Set width and height
                .clipShape(Circle()) // Clips the image to a circular shape
                .overlay(Circle().stroke(Color.white, lineWidth: 4)) // Adds a border around the circle
                .shadow(radius: 10) // Adds a shadow effect
                .padding() // Adds padding around the image
                .background(Color.red) // Sets the background color
                .cornerRadius(20) // Rounds the corners (useful if not using `clipShape`)
        }
        .padding() // Padding around the VStack
    }
}

#Preview {
    ImageView()
}
