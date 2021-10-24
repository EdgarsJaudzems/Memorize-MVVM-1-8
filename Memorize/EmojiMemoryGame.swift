//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by edgars.jaudzems on 21/10/2021.
//

import SwiftUI

// viewModel binds the view to model
class EmojiMemoryGame: ObservableObject {
    // To clean up the code for func choose and var cards
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["✈️", "🚗", "🚛", "🚀","🚚", "🚌", "🛻", "🚢", "⛵️", "🚉", "🧣", "🦊", "🐭", "🐸", "🪱","🦐", "🐞", "🌳", "🍂", "🐈", "🌈", "💥", "🌔", "⭐️"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 6) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    // @Published - when this changes let the world know about changes
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card> {
        model.cards
    }
    
    
    // MARK: - Intents
    
    func choose(_ card: Card) {
        model.choose(card)
    }
}
