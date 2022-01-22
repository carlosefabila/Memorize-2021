//
//  EmojiMemoryGameViewModel.swift
//  Memorize-2021
//
//  Created by Carlos Eduardo Fabila Garcivana on 21.01.22.
//

import SwiftUI

class EmojiMemoryGameViewModel: ObservableObject {

    @Published private var model: MemoryGame<String>

    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }

    private var theme: Theme

    var themeColor: Color { theme.color }
    var themeName: String { theme.name }

    init () {
        (self.model, self.theme) = EmojiMemoryGameViewModel.createMemoryGame()
    }

    static func createMemoryGame() -> (MemoryGame<String>, Theme) {
        let theme = Themes.getRandom()
        let emojis = theme.emojis.shuffled()
        let numberOfPairs = Int.random(in: 4..<emojis.count)
        let memoryGame = MemoryGame<String>(numberOfPairsOfCards: numberOfPairs) { pairIndex in
            emojis[pairIndex]
        }
        return (memoryGame, theme)
    }


    // MARK: - User Intent(s)
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }

    func startNewGame(){
        (self.model, self.theme) = EmojiMemoryGameViewModel.createMemoryGame()
    }
}
