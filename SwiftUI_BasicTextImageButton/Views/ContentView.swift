//
//  ContentView.swift
//  SwiftUI_BasicTextImageButton
//
//  Created by apple on 28/08/24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                
                NavigationButton(destination: ImageView(), label: "Go to Image View", backgroundColor: .blue)
                
                NavigationButton(destination: TextView(), label: "Go to Text View", backgroundColor: .green)
                
                NavigationButton(destination: ButtonView(), label: "Go to Button View", backgroundColor: .red)
            }
        }
        .padding()
        .navigationTitle("Home")
    }
}


struct NavigationButton<Destination: View>: View {
    var destination: Destination
    var label: String
    var backgroundColor: Color
    
    var body: some View {
        NavigationLink(destination: destination) {
            Text(label)
                .font(.headline)
                .padding()
                .frame(width: 200, height: 50)
                .background(backgroundColor)
                .cornerRadius(10)
                .foregroundColor(.white)
                .shadow(radius: 5)
        }
    }
}

#Preview {
    ContentView()
}
