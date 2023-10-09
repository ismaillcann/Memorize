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
           CardView(isFaceUp: false)
           CardView(isFaceUp: false)
           CardView()
           CardView()
        }
        
        .imageScale(.small)
        .foregroundColor(.gray)
        .padding()
    }
}

struct CardView: View {
    @State var isFaceUp = true
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 20)
            
            if isFaceUp == true {
                
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                
                Text("♺").font(.largeTitle)
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
