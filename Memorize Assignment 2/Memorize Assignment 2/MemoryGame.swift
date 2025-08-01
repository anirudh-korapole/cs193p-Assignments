
//  MemoryGame.swift
//  Memorize Assignment 2

//  Created by Anirudh on 29/07/25.

import Foundation

struct MemoryGame<CardContent> where CardContent: Equatable {
    private(set) var cards: Array<Card>
    var score = 0
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = []
        
        for pairIndex in 0..<max(2, numberOfPairsOfCards) {
            let content: CardContent = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: "\(pairIndex+1)a"))
            cards.append(Card(content: content, id: "\(pairIndex+1)b"))
            
        }
        
        cards.shuffle()

    }
    
    var indexOfTheOneAndOnlyFaceUpCard: Int? {
        get { cards.indices.filter { index in cards[index].isFaceUp}.only }
        set { cards.indices.forEach { cards[$0].isFaceUp = (newValue == $0) } }
    }
    
    
    mutating func choose(_ card: Card) {
        if let chosenIndex = cards.firstIndex(where: { $0.id == card.id }) {
            if !cards[chosenIndex].isFaceUp && !cards[chosenIndex].isMatched {
                if let potentialMatchIndex = indexOfTheOneAndOnlyFaceUpCard {
                    cards[chosenIndex].noOfFlips += 1
                    cards[potentialMatchIndex].noOfFlips += 1
                    
                    
                    if cards[chosenIndex].content == cards[potentialMatchIndex].content {
                        cards[chosenIndex].isMatched = true
                        cards[potentialMatchIndex].isMatched = true
                        score += 1
                    } else if cards[chosenIndex].noOfFlips > 1 || cards[potentialMatchIndex].noOfFlips > 1 {
                        score -= 1
                    }
                } else {
                    indexOfTheOneAndOnlyFaceUpCard = chosenIndex
                }
                cards[chosenIndex].isFaceUp = true

            }
        }
    }
    

    
    mutating func shuffle() {
        cards.shuffle()
    }
    

    struct Card: Equatable, Identifiable, CustomDebugStringConvertible {
        var debugDescription: String {
            return "\(id): \(content)"
        }
        
        
        var isFaceUp = false
        var isMatched = false
        var noOfFlips = 0
        let content: CardContent
        var id: String
    }
    
    
}
extension Array {
    var only : Element? {
        count == 1 ? first : nil
    }
}
