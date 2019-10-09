//
//  Game.swift
//  ApplePie
//
//  Created by Dhruv Vyas on 09/10/19.
//  Copyright © 2019 Dhruv Vyas. All rights reserved.
//

import Foundation

struct Game {
    var word : String
    var incorrectMovesRemaining : Int
    var guessedLetters: [Character]
    mutating func playerGuessed(letter : Character){
        guessedLetters.append(letter)
        if !word.contains(letter){
            incorrectMovesRemaining -= 1
        }
    }
    var formattedWord: String {
        var guessedWord = ""
        for letter in word{
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
}
