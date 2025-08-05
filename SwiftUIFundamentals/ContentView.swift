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
            Image(systemName: imageName)
                .resizable()
                .foregroundColor(Color.orange)
                .scaledToFit()
            
            Text(message)
                .font(.title)
                .fontWeight(.ultraLight)
            
            Spacer()
                        
            Button("Press me!") {
                let image1 = "sun.max.fill"
                let image2 = "hand.thumbsup"
                let message1 = "You are Awesome!"
                let message2 = "You are Great!"
                
                if message == message1{
                    message = message2
                    imageName = image1
                }else{
                    message = message1
                    imageName = image2
                }
                
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
