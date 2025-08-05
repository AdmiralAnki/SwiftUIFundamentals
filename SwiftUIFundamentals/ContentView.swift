//
//  ContentView.swift
//  SwiftUIFundamentals
//
//  Created by Ankith K on 31/07/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    
    var body: some View {
        VStack {
            Spacer()
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(.rect(cornerRadius: 30))
                .shadow(radius: 30)
            
            Text(message)
                .font(.title)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            
            Spacer()
                        
            Button("Press me!") {
                let image1 = "tiger"
                let image2 = "elephant"
                let message1 = "You are Awesome!"
                let message2 = "You are Great!"
                
                message = (message == message1 ? message2 : message1)
                imageName = (imageName == image1 ? image2 : image1)
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
