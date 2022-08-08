//
//  TextFillButton.swift
//  TextInput
//
//  Created by Sami Daik on 08/08/2022.
//

import Foundation
import SwiftUI

public struct TextFillButton: View {
    
    var action: () -> Void
    
    public var body: some View {
        Button {
            action()
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
