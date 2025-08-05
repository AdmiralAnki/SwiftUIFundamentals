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
    
    @State var lastMessageNumber = -1
    @State var lastImageNumber = -1
    
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
                
                var messageNumber = Int.random(in: 0..<messages.count)
                var imageNumber = Int.random(in: 0..<8)
                
                while messageNumber == lastMessageNumber{
                    messageNumber = Int.random(in: 0..<messages.count)
                }
                
                message = messages[messageNumber]
                lastMessageNumber = messageNumber
                
                while imageNumber == lastImageNumber{
                    imageNumber = Int.random(in: 0..<8)
                }
                print("message: current: ",imageNumber,"last: ",lastImageNumber)
                imageName = "image"+"\(imageNumber)"
                lastImageNumber = imageNumber
                
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        }
        .padding()
    }
    
    func diceExample(){
         let sum = rollDice()+rollDice()+rollDice()
        print("You rolled the result: ",sum)
        
        print(Bool.random() ? "Coin Flip: Heads" : "Coin Flip: Tail")
        
        let randomIndex = Int.random(in: 0..<messages.count)
        print(messages[randomIndex])
        
    }
    
    func rollDice()->Int{
        return Int.random(in: 0...4)
    }
}

#Preview {
    ContentView()
}
