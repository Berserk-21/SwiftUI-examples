//
//  MultilineView.swift
//  StaticText
//
//  Created by Berserk on 14/08/2024.
//

import SwiftUI

struct MultilineView: View {
    var body: some View {
        
        // Multiline text alignement.
        Text("This is an extremely long text string that will never fit even the widest of phones without wrapping.")
            .font(.largeTitle)
            .multilineTextAlignment(.trailing)
            .frame(width: 300)
    }
}

#Preview {
    MultilineView()
}
