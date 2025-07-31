//
//  FootBall.swift
//  SwiftUIFundamentals
//
//  Created by Ankith K on 31/07/25.
//

import SwiftUI

struct FootBall:View{
    var body:some View{
        VStack{
            Text("What is Football to you ?")
                .font(.largeTitle)
                .fontWeight(.thin)
                .foregroundStyle(.green)
            
            HStack{
                Image(systemName: "figure.american.football")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.purple)
                Image(systemName: "figure.australian.football")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.blue)
                
                Image(systemName: "figure.indoor.soccer")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.cyan)
            }
            
        }
    }
}


#Preview{
    FootBall()
}
