//
//  EmojiMemoryGameViewModel.swift
//  Memorize-2021
//
//  Created by Carlos Eduardo Fabila Garcivana on 21.01.22.
//

import SwiftUI

class EmojiMemoryGameViewModel {
    static let emojis = ["🚀", "🚂", "✈️", "🚲", "🚗", "🚜", "🛸", "🚁", "🚠", "🛶", "⛵️", "🚢", "🛵", "🚓", "🚑", "🚌", "🚕", "🚤", "🚙", "🚛", "🚇"]

    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            emojis[pairIndex]
        }
    }

    private var model: MemoryGame<String> = createMemoryGame()

    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
