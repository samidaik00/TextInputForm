//
//  FormTextEditor.swift
//  TextInput
//
//  Created by Sami Daik on 08/08/2022.
//

import Foundation
import SwiftUI

public struct FormTextEditor: View {
    var text: Binding<String>
    var wordCount: String
    
    public var body: some View {
        Form {
            VStack {
                TextEditor(text: text)
                    .foregroundColor(.secondary)
                    .padding(.horizontal, -15)
                
                HStack {
                    Spacer()
                    Text(wordCount)
                        .font(.caption)
                }
            }
        }
        .background(Color.yellow)
        .accessibilityIdentifier("text_editor")
    }
}
