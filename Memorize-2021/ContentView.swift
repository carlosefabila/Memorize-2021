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
                vehiclesButton
                toolsButton
                facesButton
                fruitsButton
            }
            .font(.largeTitle)
            .padding(.horizontal)
        }
        .padding()
    }

    var vehiclesButton: some View {
        let theme = Themes.vehicles
        return Button {
            emojis = theme.emojis.shuffled()
            emojiCount = emojis.count
        } label: {
            VStack {
                Image(systemName: theme.iconName)
                    .font(.largeTitle)
                Text(theme.name)
                    .font(.caption)
            }
        }
    }
    var toolsButton: some View {
        let theme = Themes.tools
        return Button {
            emojis = theme.emojis.shuffled()
            emojiCount = emojis.count
        } label: {
            VStack {
                Image(systemName: theme.iconName)
                    .font(.title)
                Text(theme.name)
                    .font(.caption)
            }
        }
    }
    var facesButton: some View {
        let theme = Themes.faces
        return Button {
            emojis = theme.emojis.shuffled()
            emojiCount = emojis.count
        } label: {
            VStack {
                Image(systemName: theme.iconName)
                    .font(.largeTitle)
                Text(theme.name)
                    .font(.caption)
            }
        }
    }
    var fruitsButton: some View {
        let theme = Themes.fruits
        return Button {
            emojis = theme.emojis.shuffled()
            emojiCount = emojis.count
        } label: {
            VStack {
                Image(systemName: theme.iconName)
                    .font(.largeTitle)
                Text(theme.name)
                    .font(.caption)
            }
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
