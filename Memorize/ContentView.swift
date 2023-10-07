//
//  ContentView.swift
//  Memorize
//
//  Created by İsmail CAN on 7.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
           CardView(isFaceUp: true)
           CardView()
           CardView()
           CardView()
        }
        
        .imageScale(.small)
        .foregroundColor(.gray)
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        if isFaceUp == true {
            ZStack(content: {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 20)
                    .strokeBorder(lineWidth: 2)
                Text("♺").font(.largeTitle)
            })
        } else {
            RoundedRectangle(cornerRadius: 20)
        }
    }
}
#Preview {
    ContentView()
}
