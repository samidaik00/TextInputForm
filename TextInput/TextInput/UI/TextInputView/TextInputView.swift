//
//  TextInputView.swift
//  TextInput
//
//  Created by Sami Daik on 08/08/2022.
//

import Foundation
import SwiftUI

extension TextInputView {
    public static func assemble() -> some View {
        return TextInputView()
    }
}

public struct TextInputView: View {
    
    @State var text: String = String()
    
    public var body: some View {
        NavigationView {
            VStack {
                textEditor
                fillButton
                Spacer()
            }
        }
    }
    
    private var textEditor: some View {
        Form {
            VStack {
                TextEditor(text: $text)
                    .foregroundColor(.secondary)
                    .padding(.horizontal, -15)
                
                HStack {
                    Spacer()
                    Text("words count")
                        .font(.caption)
                }
            }
        }
        .background(Color.yellow)
        .accessibilityIdentifier("text_editor")
    }
    
    private var fillButton: some View {
        Button {
            //TODO: connect action to VM
        } label: {
            HStack {
                Text("Fill me")
                    .bold()
                
                Image(systemName: "chevron.right")
            }
            .frame(maxWidth: .infinity)
            .foregroundColor(.white)
            .font(.headline)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.blue)
        )
        .padding()
        .accessibilityIdentifier("button_fill")
    }
}
