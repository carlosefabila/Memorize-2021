//
//  Memorize_2021App.swift
//  Memorize-2021
//
//  Created by Carlos Eduardo Fabila Garcivana on 20.01.22.
//

import SwiftUI

@main
struct Memorize_2021App: App {
    let game = EmojiMemoryGameViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
