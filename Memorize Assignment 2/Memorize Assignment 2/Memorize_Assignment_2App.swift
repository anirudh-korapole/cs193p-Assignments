//
//  Memorize_Assignment_2App.swift
//  Memorize Assignment 2
//
//  Created by Anirudh on 29/07/25.
//

import SwiftUI

@main
struct Memorize_Assignment_2App: App {
    @StateObject var game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
