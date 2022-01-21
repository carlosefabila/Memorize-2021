//
//  ContentView.swift
//  Memorize-2021
//
//  Created by Carlos Eduardo Fabila Garcivana on 20.01.22.
//

import SwiftUI

struct ContentView: View {
    @State var emojis =  Themes.vehicles.emojis.shuffled()
    @State var emojiCount = Themes.vehicles.emojis.count
    @State var color = Themes.vehicles.color

    var body: some View {
        VStack {
            Text("Memorize 2021")
                .font(.title)
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
            HStack(alignment: .bottom) {
                themeButton(theme: Themes.vehicles) {
                    (emojisList, nCards) -> Void in
                    emojis = emojisList
                    emojiCount = nCards
                }
                themeButton(theme: Themes.tools) {
                    (emojisList, nCards) -> Void in
                    emojis = emojisList
                    emojiCount = nCards
                }
                themeButton(theme: Themes.faces) {
                    (emojisList, nCards) -> Void in
                    emojis = emojisList
                    emojiCount = nCards
                }
                themeButton(theme: Themes.fruits) {
                    (emojisList, nCards) -> Void in
                    emojis = emojisList
                    emojiCount = nCards
                }
            }
            .font(.largeTitle)
            .padding(.horizontal)
        }
        .padding()
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

struct themeButton: View {
    let theme: Theme
    let buttonAction: ([String], Int) -> Void
    let cardsMinAmount = 4
    var body: some View {
        Button {
            let emojis = theme.emojis.shuffled()
            var nCards = emojis.count
            if emojis.count > cardsMinAmount {
                nCards = Int.random(in: cardsMinAmount...emojis.count)
            }
            buttonAction(emojis, nCards)
        } label: {
            VStack {
                Image(systemName: theme.iconName)
                    .font(theme.iconSize)
                Text(theme.name)
                    .font(.caption)
            }
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
