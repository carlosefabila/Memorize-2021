//
//  Themes.swift
//  Memorize-2021
//
//  Created by Carlos Eduardo Fabila Garcivana on 20.01.22.
//

import Foundation
import SwiftUI


enum Themes {
    static let vehicles = Theme(color: .red,
                          emojis: ["🚀", "🚂", "✈️", "🚲", "🚗", "🚜", "🛸", "🚁", "🚠", "🛶", "⛵️", "🚢", "🛵", "🚓", "🚑", "🚌", "🚕", "🚤", "🚙", "🚛", "🚇"])

    static let tools = Theme(color: .blue,
                       emojis: ["🔧", "🪜", "🧰", "🪛", "🔨", "⛏", "🪚", "🔩", "⚙️", "🪓"])

    static let faces = Theme(color: .orange,
                       emojis: ["😃", "😄", "😘", "😍", "😇", "😅", "🤣", "☺️", "🧐", "🤓", "😎", "😜", "😝"])

    static let fruits = Theme(color: .green,
                        emojis: ["🍎", "🍐", "🍊", "🍋", "🍌", "🍉", "🍇", "🍓", "🫐", "🍒", "🍑", "🥭", "🍍", "🥝", "🌶"])
}

struct Theme {
    let color: Color
    let emojis: [String]
}
