//
//  TextInputTests.swift
//  TextInputTests
//
//  Created by Sami Daik on 08/08/2022.
//

import XCTest
@testable import TextInput

class TextInputTests: XCTestCase {

    func testWordCreation() throws {
        let textGenerator = RandomTextGenerator()
        let word1 = textGenerator.createWord(length: 6)
        XCTAssert(!word1.isEmpty, "createWord() should not return empty String")
        XCTAssert(!word1.contains(" "), "The String returned by createWord() should not contain sapces")
        XCTAssert(word1.count == 6, "The String returned should contain exactly 6 characters when passing 6 to the function")
    }
    
    func testTextCreation() {
        let textGenerator = RandomTextGenerator()
        let text = textGenerator.createText(wordsCount: 5, wordLength: 3...10)
        let words = text.components(separatedBy: " ")
        XCTAssert(words.count == 5, "textGenerator should return exactly 5 words when passing 5 to the function")
        
        /// Testing for larger values
        let longText = textGenerator.createText(wordsCount: 15000, wordLength: 3...20)
        let longWords = longText.components(separatedBy: " ")
        XCTAssert(longWords.count == 15000, "textGenerator should return exactly 1500 words when passing 1500 to the function")
    }

}
