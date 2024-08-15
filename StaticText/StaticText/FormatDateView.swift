//
//  FormatDateView.swift
//  StaticText
//
//  Created by Berserk on 15/08/2024.
//

import SwiftUI

struct FormatDateView: View {
    var body: some View {
        // Date range.
        Text(Date.now...Date.now.addingTimeInterval(600))
        
        VStack {
            // Date styles.
            Text(Date.now.addingTimeInterval(600), style: .date)
            Text(Date.now.addingTimeInterval(600), style: .time)
            Text(Date.now.addingTimeInterval(600), style: .relative)
            Text(Date.now.addingTimeInterval(600), style: .timer)
        }
    }
}

#Preview {
    FormatDateView()
}
