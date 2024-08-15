//
//  LetterSpacingView.swift
//  StaticText
//
//  Created by Berserk on 15/08/2024.
//

import SwiftUI

struct LetterSpacingView: View {
    
    @State private var amount = 50.0
    
    var body: some View {
        // Adds interletter space.
        VStack {
            // With ligatures.
            Text("ffi")
                .font(.custom("AmericanTypewriter", size: 72))
                .kerning(amount)
            // Without ligatures
            Text("ffi")
                .font(.custom("AmericanTypewriter", size: 72))
                .tracking(amount)

            Slider(value: $amount, in: 0...100) {
                Text("Adjust the amount of spacing")
            }
        }
    }
}

#Preview {
    LetterSpacingView()
}
