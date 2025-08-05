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
    @State private var imageNumber = 0
    @State private var index = 0
    
    let messages = ["You are Awesome!",
                    "You are Great!",
                    "You are an Astronaut",
                    "You are a champion!",
                    "You are Truth seeker!",
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                    "Cras urna lectus, pellentesque at condimentum ut, mattis sit amet diam."]
    
    var body: some View {
        VStack {
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height: 120)
                .animation(.easeInOut(duration: 0.15), value: imageName)
                
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.default, value: imageName)
            
            Spacer()
            
            Button("Press me!") {
                
                message = messages[index]
                index+=1
                
                imageName = "image"+"\(imageNumber)"
                imageNumber+=1
                                
                if index > messages.count-1{
                    index = 0
                }
                
                if imageNumber > 7{
                    imageNumber = 0
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
