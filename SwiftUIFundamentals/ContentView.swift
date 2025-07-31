//
//  ContentView.swift
//  SwiftUIFundamentals
//
//  Created by Ankith K on 31/07/25.
//

import SwiftUI

struct ContentView: View {
    @State private var greeting = "Welcome!"
    private var great = "Great"
    private var awesome = "Awesome"
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "swift")
                .resizable()
                .foregroundColor(Color.orange)
                .scaledToFit()
                .frame(width: 200.0, height: 200.0)
            
            Text(greeting)
                .font(.title)
                .fontWeight(.ultraLight)
            Spacer()
            HStack{
                Button(awesome) {
                    greeting = awesome+"!"
                }
                
                Button(great) {
                    greeting = great+"!"
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
