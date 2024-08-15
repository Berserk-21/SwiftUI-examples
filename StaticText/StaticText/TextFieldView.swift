//
//  TextFieldView.swift
//  StaticText
//
//  Created by Berserk on 15/08/2024.
//

import SwiftUI

struct TextFieldView: View {
    
    @State private var name = "Paul"
    
    var body: some View {
        // Capitalize all characters.
        TextField("Shout your name at me", text: $name)
            .textFieldStyle(.roundedBorder)
            .textInputAutocapitalization(.characters)
            .padding(.horizontal)
    }
}

#Preview {
    TextFieldView()
}
