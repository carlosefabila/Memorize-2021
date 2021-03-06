//
//  MemoryGame.swift
//  Memorize-2021
//
//  Created by Carlos Eduardo Fabila Garcivana on 21.01.22.
//

import Foundation

struct MemoryGame<CardContent> where CardContent: Equatable {
    private(set) var cards: Array<Card>
    private var indexOfTheOnlyFaceUpCard: Int?
    private(set) var score: Int

    init (numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        score = 0
        cards = Array<Card>()
        // add numberOfPairOfCards x2 cards to cards array
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2 + 1))
        }
        cards.shuffle()
    }

    mutating func choose(_ card: Card) {
        if let chosenIndex = cards.firstIndex(where: { $0.id == card.id }),
           !cards[chosenIndex].isFaceUp,
           !cards[chosenIndex].isMatched
        {
            if let potentialMatchIndex = indexOfTheOnlyFaceUpCard {
                if cards[chosenIndex].content == cards[potentialMatchIndex].content {
                    cards[chosenIndex].isMatched = true
                    cards[potentialMatchIndex].isMatched = true
                    score += pointsForMatch
                } else {
                    score += cards[chosenIndex].alreadySeen ? pointsForMismatchSeenCard : pointsForMismatchNotSeenCard
                    score += cards[potentialMatchIndex].alreadySeen ? pointsForMismatchSeenCard : pointsForMismatchNotSeenCard
                }
                indexOfTheOnlyFaceUpCard = nil
                cards[chosenIndex].alreadySeen = true
                cards[potentialMatchIndex].alreadySeen = true
            } else {
                for index in cards.indices {
                    cards[index].isFaceUp = false
                }
                indexOfTheOnlyFaceUpCard = chosenIndex
            }
            cards[chosenIndex].isFaceUp.toggle()
        }
    }

    struct Card: Identifiable {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var alreadySeen: Bool = false
        var content: CardContent
        var id: Int
    }

    let pointsForMatch: Int = 2
    let pointsForMismatchSeenCard: Int = -1
    let pointsForMismatchNotSeenCard: Int = 0
}
