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
    case flags
    case animals

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
        case .flags:
            return Themes.flagsTheme
        case .animals:
            return Themes.animalsTheme
        }
    }
    static let vehiclesTheme = Theme(name: "vehicles",
                                color: .red,
                                emojis: ["🚀", "🚂", "✈️", "🚲", "🚗", "🚜", "🛸", "🚁", "🚠", "🛶", "⛵️", "🚢", "🛵", "🚓", "🚑", "🚌", "🚕", "🚤", "🚙", "🚛", "🚇"])

    static let toolsTheme = Theme(name: "tools",
                             color: .blue,
                             emojis: ["🔧", "🪜", "🧰", "🪛", "🔨", "⛏", "🪚", "🔩", "⚙️", "🪓", "🧱", "🔑", "🧹", "✂️", "📐", "📏", "📎", "✏️", "🖋", "🔓", "🖍"])

    static let facesTheme = Theme(name: "faces",
                             color: .orange,
                             emojis: ["😃", "😄", "😘", "😍", "😇", "😅", "🤣", "☺️", "🧐", "🤓", "😎", "😜", "😝", "😤", "😭", "😢", "😠", "😱", "🤔", "😉", "🥳", "😩", "🤫", "😏", "🥱", "😲", "😴", "😷"])

    static let fruitsTheme = Theme(name: "fruits",
                              color: .green,
                              emojis: ["🍎", "🍐", "🍊", "🍋", "🍌", "🍉", "🍇", "🍓", "🫐", "🍒", "🍑", "🥭", "🍍", "🥝", "🌶", "🥑"])
    static let flagsTheme = Theme(name: "flags",
                                color: .gray,
                                emojis: ["🇨🇦", "🇧🇷", "🇩🇪", "🇬🇷", "🇪🇺", "🇯🇵", "🇲🇽", "🇰🇷", "🇮🇹", "🇮🇪", "🇪🇸", "🇵🇹", "🇺🇸", "🇬🇧", "🇹🇷", "🇷🇺", "🇮🇳", "🇦🇺", "🇪🇨"])
    static let animalsTheme = Theme(name: "animals",
                                    color: .brown,
                                emojis: ["🐒", "🐥", "🦆", "🦅", "🦉", "🦇", "🐝", "🦋", "🐌", "🐞", "🪰", "🐢", "🐍", "🦐", "🦀", "🐡", "🐬", "🐋", "🦈", "🐊", "🐅", "🦓", "🦍", "🦧", "🐘", "🦏", "🐫", "🦒", "🦘", "🐃", "🦬", "🐄", "🐖", "🐏", "🦙", "🐐", "🦌", "🐕", "🐈", "🦜", "🐇"])
}

struct Theme {
    let name: String
    let color: Color
    let emojis: [String]
}
