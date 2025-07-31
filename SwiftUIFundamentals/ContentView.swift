//
//  ContentView.swift
//  SwiftUIFundamentals
//
//  Created by Ankith K on 31/07/25.
//

import SwiftUI

struct ContentView: View {
    @State private var greeting = "Welcome!"
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .foregroundColor(Color.orange)
                .scaledToFit()
                .border(.mint)
            
            Text(greeting)
                .font(.title)
            
            Text("this is a sample line")
                .font(.body)
                .fontWeight(.semibold)
            
            Button("Click Me") {
                greeting = ["Hello", "Hola","Bonjour","Hallo","Ciao","Konnichiwa","Ni Hao","Zdravstvuyte"].randomElement()!
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
