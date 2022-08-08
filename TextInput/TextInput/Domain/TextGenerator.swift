//
//  TextGenerator.swift
//  TextInput
//
//  Created by Sami Daik on 08/08/2022.
//

import Foundation

public protocol TextGenerator {
    
    /// Generates a word of a given characters lenght
    /// - Parameter length: The number of characters that the word shall be made of
    /// - Returns: The string representing the number of words
    func createWord(length: Int) -> String
    
    
    /// Generates a text composed of words
    /// - Parameters:
    ///   - wordsCount: The number of words needed in the text
    ///   - wordLength: The `ClosedRange` defning the the length of the words
    /// - Returns: The string representing the number of words
    func createText(wordsCount: Int, wordLength: ClosedRange<Int>) -> String
}
