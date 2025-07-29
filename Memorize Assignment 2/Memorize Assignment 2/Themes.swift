//
//  Themes.swift
//  Memorize Assignment 2
//
//  Created by Anirudh on 29/07/25.
//

import SwiftUI

struct Theme {
    var name: String
    var emojis: [String]
    var color: Color
    var accentColor: Color
    var noOfPairs: Int?
}


let themes: [Theme] = [

    Theme(
        name: "Halloween",
        emojis: ["👻","🎃","🕷","🧟‍♂️","🧛🏼‍♀️","☠️","👽","🦹‍♀️","🦇","🌘","⚰️","🔮"],
        color: .orange,
        accentColor: .red,
        noOfPairs: 8
    ),
    Theme(
        name: "Flags",
        emojis: ["🇸🇬","🇯🇵","🏴‍☠️","🏳️‍🌈","🇬🇧","🇹🇼","🇺🇸","🇦🇶","🇰🇵","🇭🇰","🇲🇨","🇼🇸"],
        color: .red,
        accentColor: .blue,
        noOfPairs: 6
    ),
    Theme(
        name: "Animals",
        emojis: ["🦑","🦧","🦃","🦚","🐫","🦉","🦕","🦥","🐸","🐼","🐺","🦈"],
        color: .green,
        accentColor: .yellow,
        noOfPairs: 8
    ),
    Theme(
        name: "Places",
        emojis: ["🗽","🗿","🗼","🎢","🌋","🏝","🏜","⛩","🕍","🕋","🏯","🏟"],
        color: .blue,
        accentColor: .green,
        noOfPairs: 7,
    ),
    Theme(
        name: "Sports",
        emojis: ["🤺","🏑","⛷","⚽️","🏀","🪂","🥏","⛳️","🛹","🎣","🏉","🏓"],
        color: .purple,
        accentColor: .orange,
        noOfPairs: 5
    ),
    Theme(
        name: "Food",
        emojis: ["🌮","🍕","🍝","🍱","🍪","🍩","🥨","🥖","🍟","🍙","🍢","🍿"],
        color: .yellow,
        accentColor: .red,
        noOfPairs: 6
    )
    
    
]

