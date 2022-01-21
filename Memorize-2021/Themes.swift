//
//  Themes.swift
//  Memorize-2021
//
//  Created by Carlos Eduardo Fabila Garcivana on 20.01.22.
//

import Foundation
import SwiftUI


enum Themes {
    static let vehicles = Theme(name: "vehicles",
                                iconName: "car",
                                iconSize: .largeTitle,
                                color: .red,
                                emojis: ["🚀", "🚂", "✈️", "🚲", "🚗", "🚜", "🛸", "🚁", "🚠", "🛶", "⛵️", "🚢", "🛵", "🚓", "🚑", "🚌", "🚕", "🚤", "🚙", "🚛", "🚇"])

    static let tools = Theme(name: "tools",
                             iconName: "wrench.and.screwdriver",
                             iconSize: .title,
                             color: .blue,
                             emojis: ["🔧", "🪜", "🧰", "🪛", "🔨", "⛏", "🪚", "🔩", "⚙️", "🪓"])

    static let faces = Theme(name: "faces",
                             iconName: "face.smiling",
                             iconSize: .largeTitle,
                             color: .orange,
                             emojis: ["😃", "😄", "😘", "😍", "😇", "😅", "🤣", "☺️", "🧐", "🤓", "😎", "😜", "😝"])

    static let fruits = Theme(name: "fruits",
                              iconName: "applelogo",
                              iconSize: .largeTitle,
                              color: .green,
                              emojis: ["🍎", "🍐", "🍊", "🍋", "🍌", "🍉", "🍇", "🍓", "🫐", "🍒", "🍑", "🥭", "🍍", "🥝", "🌶"])
}

struct Theme {
    let name: String
    let iconName: String
    let iconSize: Font
    let color: Color
    let emojis: [String]
}
