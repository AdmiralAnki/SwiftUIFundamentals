//
//  ContentView.swift
//  SwiftUIFundamentals
//
//  Created by Ankith K on 31/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .foregroundColor(Color.orange)
                .scaledToFit()
                .border(.mint)
            
            Text("Hello, world!")
                .font(.title)
            
            Text(" this is a sample line")
                .font(.body)
                .fontWeight(.semibold)        
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
