//
//  RandomTextGenerator.swift
//  TextInput
//
//  Created by Sami Daik on 08/08/2022.
//

import Foundation


/// An implementation of the `TextGenerator` protocol that uses randomness to create text
public class RandomTextGenerator: TextGenerator {
    
    public func createWord(length: Int) -> String {
        let characters = "abcdefghijklmnopqrstuvwxyz"
        var string: String = String()
        
        for _ in 0 ..< length {
            string.append(characters.randomElement()!)
        }
        return string
    }
    
    public func createText(wordsCount: Int, wordLength: ClosedRange<Int>) -> String {
        var text: String = String()
        
        for _ in 0 ..< wordsCount {
            let length = Int.random(in: wordLength)
            let word = createWord(length: length)
            text.append(contentsOf: "\(word) ")
        }
        
        /// Dropping the last space added by the append loop
        return String(text.dropLast())
    }
}
