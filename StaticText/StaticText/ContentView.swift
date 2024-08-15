//
//  ContentView.swift
//  StaticText
//
//  Created by Berserk on 14/08/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Section("Line limit") {
                LineLimitView()
            }
            
            Section("Font style and size") {
                FontView()
            }
            
            Section("Attributed string") {
                AttributedStringView()
            }
            
            Section("Multiline") {
                MultilineView()
            }
            
            Section("Text view format") {
                FormatTextView()
            }
            
            Section("Letter spacing") {
                LetterSpacingView()
            }
        }
    }
}

#Preview {
    ContentView()
}
