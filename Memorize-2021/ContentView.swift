//
//  ContentView.swift
//  Memorize-2021
//
//  Created by Carlos Eduardo Fabila Garcivana on 20.01.22.
//

import SwiftUI

struct ContentView: View {
    @State var emojis =  Themes.vehicles.emojis
    @State var emojiCount = Themes.vehicles.emojis.count

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
            HStack {
                removeCard
                vehiclesButton
                toolsButton
                facesButton
                fruitsButton
                addCard
            }
            .font(.largeTitle)
            .padding(.horizontal)
        }
        .padding()
    }

    var vehiclesButton: some View {
        Button {
            emojis = Themes.vehicles.emojis
            emojiCount = emojis.count
        } label: {
            Text(Themes.vehicles.emojis.first ?? "❌")
        }
    }
    var toolsButton: some View {
        Button {
            emojis = Themes.tools.emojis
            emojiCount = emojis.count
        } label: {
            Text(Themes.tools.emojis.first ?? "❌")
        }
    }
    var facesButton: some View {
        Button {
            emojis = Themes.faces.emojis
            emojiCount = emojis.count
        } label: {
            Text(Themes.faces.emojis.first ?? "❌")
        }
    }
    var fruitsButton: some View {
        Button {
            emojis = Themes.fruits.emojis
            emojiCount = emojis.count
        } label: {
            Text(Themes.fruits.emojis.first ?? "❌")
        }
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
