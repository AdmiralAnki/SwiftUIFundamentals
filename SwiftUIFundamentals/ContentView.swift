//
//  ContentView.swift
//  SwiftUIFundamentals
//
//  Created by Ankith K on 31/07/25.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    
    @State var lastMessageNumber = -1
    @State var lastImageNumber = -1
    @State var lastSoundNumber = -1
    @State var audioPlayer:AVAudioPlayer!
    
    @State var isSoundOn = true
    
    let imageCount = 9
    let soundCount = 6
    
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
                
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.default, value: imageName)
            
            Spacer()
            HStack{
                Text("Sound on:")
                Toggle(isOn: $isSoundOn, label: {})
                    .onChange(of: isSoundOn, { oldValue, newValue in
                        if let audioPlayer, audioPlayer.isPlaying{
                            audioPlayer.stop()
                        }
                    })
                .labelsHidden()
                
                Spacer()
                
                Button("Show message!") {
                    
                    lastMessageNumber = getUniqueRandomNumber(upperBound: messages.count, prevValue: lastMessageNumber)
                    message = messages[lastMessageNumber]
                    
                    lastImageNumber = getUniqueRandomNumber(upperBound: imageCount-1, prevValue: lastImageNumber)
                    imageName = "image"+"\(lastImageNumber)"
                    
                    lastSoundNumber = getUniqueRandomNumber(upperBound: soundCount-1, prevValue: lastSoundNumber)
                    
                    if isSoundOn{
                        playSound(soundName: "sound\(lastSoundNumber)")
                    }
                    
                }
                .buttonStyle(.borderedProminent)
                .font(.title2)
                .tint(.orange)
            }
        }
        .padding()
    }
    
    private func playSound(soundName:String){
        guard let soundFile = NSDataAsset(name: soundName) else{
            print("File not found")
            return
        }
        
        do{
            
            if audioPlayer != nil && audioPlayer.isPlaying{
                audioPlayer.stop()
            }
            
            audioPlayer = try AVAudioPlayer(data: soundFile.data)
            audioPlayer.play()
            
        }catch{
            print("Error: ",error.localizedDescription)
        }
    }
    
    private func getUniqueRandomNumber(upperBound:Int,prevValue:Int)->Int{
        
        var newValue:Int
        repeat {
            newValue = Int.random(in: 0..<upperBound)
        }while newValue == prevValue
            
        return newValue
        
    }
    func diceExample(){
         let sum = rollDice(sides: 4)+rollDice(sides: 4)+rollDice(sides: 4)
        print("You rolled the result: ",sum)
        
        print(Bool.random() ? "Coin Flip: Heads" : "Coin Flip: Tail")
        
        let randomIndex = Int.random(in: 0..<messages.count)
        print(messages[randomIndex])
        
    }
    
    func rollDice(sides:Int)->Int{
        return Int.random(in: 0...sides)
    }
}

#Preview {
    ContentView()
}
