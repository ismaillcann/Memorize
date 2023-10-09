//
//  ContentView.swift
//  Memorize
//
//  Created by İsmail CAN on 7.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let emojis = ["👻", "🎃", "🕷️", "😈"]  // [String] === Array<String>

        
        HStack {
            ForEach(emojis.indices, id: \.self){ index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.gray)
        .padding()
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp = true
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 20)
            
            if isFaceUp == true {
                
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                
                Text(content).font(.largeTitle)
            }
            else {
                base.fill()
            }
                
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}
#Preview {
    ContentView()
}
