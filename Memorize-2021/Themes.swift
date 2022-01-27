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
            return Theme(name: "Vehicles",
                         color: .red,
                         emojis: Emojis.vehicles)
        case .tools:
            return Theme(name: "Tools",
                         color: .blue,
                         emojis: Emojis.tools)
        case .faces:
            return Theme(name: "Faces",
                         color: .orange,
                         emojis: Emojis.faces)
        case .fruits:
            return Theme(name: "Fruits",
                         color: .green,
                         emojis: Emojis.fruits)
        case .flags:
            return Theme(name: "Flags",
                         color: .gray,
                         emojis: Emojis.flags)
        case .animals:
            return Theme(name: "Animals",
                         color: .brown,
                         emojis: Emojis.animals)
        }
    }
}

struct Theme {
    let name: String
    let color: Color
    let emojis: [String]
}

struct Emojis {
    static let vehicles = ["🚀", "🚂", "✈️", "🚲", "🚗", "🚜", "🛸", "🚁", "🚠", "🛶", "⛵️", "🚢", "🛵", "🚓", "🚑", "🚌", "🚕", "🚤", "🚙", "🚛", "🚇"]
    static let tools = ["🔧", "🪜", "🧰", "🪛", "🔨", "⛏", "🪚", "🔩", "⚙️", "🪓", "🧱", "🔑", "🧹", "✂️", "📐", "📏", "📎", "✏️", "🖋", "🔓", "🖍"]
    static let faces = ["😃", "😄", "😘", "😍", "😇", "😅", "🤣", "☺️", "🧐", "🤓", "😎", "😜", "😝", "😤", "😭", "😢", "😠", "😱", "🤔", "😉", "🥳", "😩", "🤫", "😏", "🥱", "😲", "😴", "😷"]
    static let fruits = ["🍎", "🍐", "🍊", "🍋", "🍌", "🍉", "🍇", "🍓", "🫐", "🍒", "🍑", "🥭", "🍍", "🥝", "🌶", "🥑"]
    static let flags = ["🇨🇦", "🇧🇷", "🇩🇪", "🇬🇷", "🇪🇺", "🇯🇵", "🇲🇽", "🇰🇷", "🇮🇹", "🇮🇪", "🇪🇸", "🇵🇹", "🇺🇸", "🇬🇧", "🇹🇷", "🇷🇺", "🇮🇳", "🇦🇺", "🇪🇨"]
    static let animals = ["🐒", "🐥", "🦆", "🦅", "🦉", "🦇", "🐝", "🦋", "🐌", "🐞", "🪰", "🐢", "🐍", "🦐", "🦀", "🐡", "🐬", "🐋", "🦈", "🐊", "🐅", "🦓", "🦍", "🦧", "🐘", "🦏", "🐫", "🦒", "🦘", "🐃", "🦬", "🐄", "🐖", "🐏", "🦙", "🐐", "🦌", "🐕", "🐈", "🦜", "🐇"]

}
