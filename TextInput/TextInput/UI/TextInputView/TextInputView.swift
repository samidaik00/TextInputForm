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
        let viewModel = ViewModel(textGenerator: RandomTextGenerator())
        return TextInputView(viewModel: viewModel)
    }
}

public struct TextInputView: View {
    
    @StateObject var viewModel: ViewModel
    
    public var body: some View {
        NavigationView {
            VStack {
                FormTextEditor(text: $viewModel.text, wordCount: viewModel.wordCount)
                TextFillButton(action: viewModel.didPressFill)
            }
            .navigationTitle("Hi")
            .toolbar {
                ToolbarItemGroup(placement: .primaryAction) {
                    Button {
                        viewModel.reset()
                    } label: {
                        Image(systemName: "trash.fill")
                    }
                }
            }
        }
    }
}
