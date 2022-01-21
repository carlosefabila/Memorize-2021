//
//  Themes.swift
//  Memorize-2021
//
//  Created by Carlos Eduardo Fabila Garcivana on 20.01.22.
//

import Foundation
import SwiftUI


enum Themes: CaseIterable {
    case vehicles
    case tools
    case faces
    case fruits

    static func getRandom() -> Theme {
        switch Themes.allCases.randomElement()! {
        case .vehicles:
            return Themes.vehiclesTheme
        case .tools:
            return Themes.toolsTheme
        case .faces:
            return Themes.facesTheme
        case .fruits:
            return Themes.fruitsTheme
        }
    }
    static let vehiclesTheme = Theme(name: "vehicles",
                                iconName: "car",
                                iconSize: .largeTitle,
                                color: .red,
                                emojis: ["🚀", "🚂", "✈️", "🚲", "🚗", "🚜", "🛸", "🚁", "🚠", "🛶", "⛵️", "🚢", "🛵", "🚓", "🚑", "🚌", "🚕", "🚤", "🚙", "🚛", "🚇"])

    static let toolsTheme = Theme(name: "tools",
                             iconName: "wrench.and.screwdriver",
                             iconSize: .title,
                             color: .blue,
                             emojis: ["🔧", "🪜", "🧰", "🪛", "🔨", "⛏", "🪚", "🔩", "⚙️", "🪓"])

    static let facesTheme = Theme(name: "faces",
                             iconName: "face.smiling",
                             iconSize: .largeTitle,
                             color: .orange,
                             emojis: ["😃", "😄", "😘", "😍", "😇", "😅", "🤣", "☺️", "🧐", "🤓", "😎", "😜", "😝"])

    static let fruitsTheme = Theme(name: "fruits",
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
