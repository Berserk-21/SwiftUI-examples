//
//  FontView.swift
//  StaticText
//
//  Created by Berserk on 14/08/2024.
//

import SwiftUI

struct FontView: View {
    var body: some View {
        
        // .largeTitle font.
        Text("This is an extremely long text string that will never fit even the widest of phones without wrapping")
            .font(.largeTitle)
            .frame(width: 300)
        
        // Text color.
        Text("The best laid plans")
            .font(.headline)
            .foregroundStyle(.red)
        
        // Text color gradient.
        Text("The best laid plans")
            .font(.headline)
            .foregroundStyle(.blue.gradient)
        
        // Text with background.
        Text("Playing with text style")
            .padding()
            .background(.brown)
            .foregroundStyle(.white)
            .font(.headline)
        
        // Text with line spacing.
        Text("Playing with some long text string that will not fit even the width of the view.")
            .font(.largeTitle)
            .lineSpacing(50)
            .frame(width: 300)
        
        // Only set the style of the font (without touching its size).
        Text("Hello bro!")
            .fontDesign(.serif)
        
        // Compress or expand the font (only works with fonts that support it).
        Text("Hello man!")
            .fontWidth(.condensed)
    }
}

#Preview {
    FontView()
}
