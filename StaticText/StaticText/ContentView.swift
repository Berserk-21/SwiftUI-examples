//
//  ContentView.swift
//  StaticText
//
//  Created by Berserk on 14/08/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // Set a max number of line limit.
        Text("This is some longer text that is limited to three lines, so anything more than that should be clipped after three lines. Don't worry, three lines is enough man!")
            .lineLimit(3)
            .background(.blue)
        
        // Set a range limit
        Text("This is some longer text that is range limited between two and three lines, so anything more than that should be clipped after three lines. Hope it works !")
            .lineLimit(2...3)
            .background(.green)
        
        // Set an exact line limit
        Text("This is some text that is limited to two lines, the text should be truncated in the middle. So anything more than that should be clipped after two lines.")
            .background(.red)
            .lineLimit(2, reservesSpace: true)
        
        // Set Text width.
        Text("This is some random text with a frame width that sets the view width.")
            .background(.gray)
            .frame(width: 300)
        
        // Set an exact line limit
        Text("This is some text truncated in the middle that always has two lines and has a width of 300. So anything more than that should be clipped after two lines.")
            .background(.red)
            .frame(width: 300)
            .lineLimit(2, reservesSpace: true)
            .truncationMode(.middle)
    }
}

#Preview {
    ContentView()
}
