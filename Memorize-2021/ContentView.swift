//
//  ContentView.swift
//  Memorize-2021
//
//  Created by Carlos Eduardo Fabila Garcivana on 20.01.22.
//

import SwiftUI

struct ContentView: View {
    var emojis =  ["🚀", "🚂", "✈️", "🚲", "🚗", "🚜", "🛸", "🚁", "🚠", "🛶", "⛵️", "🚢", "🛵", "🚓", "🚑", "🚌", "🚕", "🚤", "🚙", "🚛", "🚇"]
    @State var emojiCount = 21

    var body: some View {
        VStack {
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
            Spacer()
            HStack {
                removeCard
                Spacer()
                addCard
            }
            .font(.largeTitle)
            .padding(.horizontal)
        }
        .padding()
    }

    var removeCard: some View {
        Button {
            if emojiCount > 2 {
                emojiCount -= 1
            }
        } label: {
            Image(systemName: "minus.circle")
        }
    }
    var addCard: some View {
        Button {
            if emojiCount < emojis.count {
                emojiCount += 1
            }
        } label: {
            Image(systemName: "plus.circle")
        }
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true

    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20.0)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}







struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
