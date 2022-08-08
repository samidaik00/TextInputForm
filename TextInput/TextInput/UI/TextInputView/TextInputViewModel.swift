//
//  TextInputViewModel.swift
//  TextInput
//
//  Created by Sami Daik on 08/08/2022.
//

import Foundation
import SwiftUI

extension TextInputView {
    class ViewModel: ObservableObject {
        private static let placeholder: String = "I'm an editable text field"
        private var textGenerator: TextGenerator
        
        @Published var text: String = placeholder
        
        var wordCount: String {
            guard !text.isEmpty else  { return "" }
            let count = text.components(separatedBy: " ").count
            return "\(count) words"
        }
        
        init(textGenerator: TextGenerator) {
            self.textGenerator = textGenerator
        }
        
        func didPressFill() {
            text = textGenerator.createText(wordsCount: Int.random(in: 50..<100),
                                            wordLength: (3...10))
        }
        
        func reset() {
            text = ViewModel.placeholder
        }
    }
}
