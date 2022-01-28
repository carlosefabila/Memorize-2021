//
//  EmojiMemoryGameViewModel.swift
//  Memorize-2021
//
//  Created by Carlos Eduardo Fabila Garcivana on 21.01.22.
//

import SwiftUI

class EmojiMemoryGameViewModel: ObservableObject {
    static let minNumberOfPairs: Int = 4
    static let maxNumberOfPairs: Int = 10

    @Published private var model: MemoryGame<String>
    var cards: Array<MemoryGame<String>.Card> { model.cards }
    var score: Int { model.score }

    private var theme: Theme
    var themeColor: Color { theme.color }
    var themeName: String { theme.name }

    init () {
        (self.model, self.theme) = EmojiMemoryGameViewModel.createMemoryGame()
    }

    static func createMemoryGame() -> (MemoryGame<String>, Theme) {
        let numberOfPairs = Int.random(in: minNumberOfPairs..<maxNumberOfPairs)
        let theme = Themes.getRandom(withNumberOfEmojisEqualTo: numberOfPairs)
        let memoryGame = MemoryGame<String>(numberOfPairsOfCards: numberOfPairs) { pairIndex in
            theme.emojis[pairIndex]
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
