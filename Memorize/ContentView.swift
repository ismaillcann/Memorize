//
//  ContentView.swift
//  Memorize
//
//  Created by İsmail CAN on 7.10.2023.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👻", "🎃", "🕷️", "😈", "♺", "♠️", "🎭"] // [String] === Array<String>
    @State var cardCount: Int = 4

    var body: some View {
        VStack {
            cards
            cardCountAdjusters
        }

        .padding()
    }

    var cards: some View {
        HStack {
            ForEach(0 ..< cardCount, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.gray)
    }

    var cardCountAdjusters: some View {
        HStack {
            cardRemover
            Spacer()
            cardAdder
        }
        .imageScale(.large)
        .font(.title3)
    }

    var cardRemover: some View {
        Button(action: {
            if cardCount > 1 {
                cardCount -= 1
            }
        }, label: {
            Image(systemName: "rectangle.stack.badge.minus.fill")

        })
    }

    var cardAdder: some View {
        Button(action: {
            if cardCount < emojis.count {
                cardCount += 1
            }
        }, label: {
            Image(systemName: "rectangle.stack.badge.plus.fill")

        })
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
            } else {
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
