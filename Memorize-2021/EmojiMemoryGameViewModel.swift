//
//  EmojiMemoryGameViewModel.swift
//  Memorize-2021
//
//  Created by Carlos Eduardo Fabila Garcivana on 21.01.22.
//

import SwiftUI

class EmojiMemoryGameViewModel: ObservableObject {

    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = Themes.getRandom().emojis.shuffled()
        let numberOfPairs = Int.random(in: 4..<emojis.count)
        return MemoryGame<String>(numberOfPairsOfCards: numberOfPairs) { pairIndex in
            emojis[pairIndex]
        }
    }

    @Published private var model = createMemoryGame()

    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }


    // MARK: - User Intent(s)
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }

    func startNewGame(){
        model = EmojiMemoryGameViewModel.createMemoryGame()
    }
}
