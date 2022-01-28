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

    static func getRandom(withNumberOfEmojisEqualTo numberOfEmojis: Int = 20) -> Theme {
        switch Themes.allCases.randomElement()! {
        case .vehicles:
            return Theme(named: "Vehicles",
                         colored: .red,
                         randomlySelect: numberOfEmojis,
                         fromEmojis: Emojis.vehicles)
        case .tools:
            return Theme(named: "Tools",
                         colored: .blue,
                         randomlySelect: numberOfEmojis,
                         fromEmojis: Emojis.tools)
        case .faces:
            return Theme(named: "Faces",
                         colored: .orange,
                         randomlySelect: numberOfEmojis,
                         fromEmojis: Emojis.faces)
        case .fruits:
            return Theme(named: "Fruits",
                         colored: .green,
                         randomlySelect: numberOfEmojis,
                         fromEmojis: Emojis.fruits)
        case .flags:
            return Theme(named: "Flags",
                         colored: .gray,
                         randomlySelect: numberOfEmojis,
                         fromEmojis: Emojis.flags)
        case .animals:
            return Theme(named: "Animals",
                         colored: .brown,
                         randomlySelect: numberOfEmojis,
                         fromEmojis: Emojis.animals)
        }
    }
}

struct Theme {
    let name: String
    let color: Color
    let emojis: [String]
    var emojisCount: Int { emojis.count }

    init(named chosenName: String, colored chosenColor: Color, randomlySelect numberOfEmojis: Int, fromEmojis emojisList: [String]){
        self.name = chosenName
        self.color = chosenColor
        let shuffledEmojisList = emojisList.shuffled()
        if numberOfEmojis <= shuffledEmojisList.count {
            let emojisSelection = shuffledEmojisList[0..<numberOfEmojis]
            self.emojis = Array(emojisSelection)
        } else {
            self.emojis = shuffledEmojisList
        }
    }
}

struct Emojis {
    static let vehicles = ["🚀", "🚂", "✈️", "🚲", "🚗", "🚜", "🛸", "🚁", "🚠", "🛶", "⛵️", "🚢", "🛵", "🚓", "🚑", "🚌", "🚕", "🚤", "🚙", "🚛", "🚇"]
    static let tools = ["🔧", "🪜", "🧰", "🪛", "🔨", "⛏", "🪚", "🔩", "⚙️", "🪓", "🧱", "🔑", "🧹", "✂️", "📐", "📏", "📎", "✏️", "🖋", "🔓", "🖍"]
    static let faces = ["😃", "😄", "😘", "😍", "😇", "😅", "🤣", "☺️", "🧐", "🤓", "😎", "😜", "😝", "😤", "😭", "😢", "😠", "😱", "🤔", "😉", "🥳", "😩", "🤫", "😏", "🥱", "😲", "😴", "😷"]
    static let fruits = ["🍎", "🍐", "🍊", "🍋", "🍌", "🍉", "🍇", "🍓", "🫐", "🍒", "🍑", "🥭", "🍍", "🥝", "🌶", "🥑"]
    static let flags = ["🇨🇦", "🇧🇷", "🇩🇪", "🇬🇷", "🇪🇺", "🇯🇵", "🇲🇽", "🇰🇷", "🇮🇹", "🇮🇪", "🇪🇸", "🇵🇹", "🇺🇸", "🇬🇧", "🇹🇷", "🇷🇺", "🇮🇳", "🇦🇺", "🇪🇨"]
    static let animals = ["🐒", "🐥", "🦆", "🦅", "🦉", "🦇", "🐝", "🦋", "🐌", "🐞", "🪰", "🐢", "🐍", "🦐", "🦀", "🐡", "🐬", "🐋", "🦈", "🐊", "🐅", "🦓", "🦍", "🦧", "🐘", "🦏", "🐫", "🦒", "🦘", "🐃", "🦬", "🐄", "🐖", "🐏", "🦙", "🐐", "🦌", "🐕", "🐈", "🦜", "🐇"]

}
