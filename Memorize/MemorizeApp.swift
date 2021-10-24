//
//  MemorizeApp.swift
//  Memorize
//
//  Created by edgars.jaudzems on 19/10/2021.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
