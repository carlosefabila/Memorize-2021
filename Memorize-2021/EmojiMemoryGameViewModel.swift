//
//  EmojiMemoryGameViewModel.swift
//  Memorize-2021
//
//  Created by Carlos Eduardo Fabila Garcivana on 21.01.22.
//

import SwiftUI

class EmojiMemoryGameViewModel: ObservableObject {

    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = Themes.getRandom().emojis
        return MemoryGame<String>(numberOfPairsOfCards: 7) { pairIndex in
            emojis[pairIndex]
        }
    }

    @Published private var model = createMemoryGame()

    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }


    // MARK: - Intent(s)
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }

    func startNewGame(){
        model = EmojiMemoryGameViewModel.createMemoryGame()
    }
}
