//
//  LabelView.swift
//  StaticText
//
//  Created by Berserk on 15/08/2024.
//

import SwiftUI

struct LabelView: View {
    var body: some View {
        
        VStack(spacing: 16.0) {
            Label("Your account", systemImage: "folder.circle")
            // Both image and text are scaled.
                .font(.title)
            
            Label("Text Only", systemImage: "heart")
                .font(.title)
                .labelStyle(.titleOnly)
            
            Label("Icon Only", systemImage: "star")
                .font(.title)
                .labelStyle(.iconOnly)
            
            Label("Both", systemImage: "star")
                .font(.title)
                .labelStyle(.titleAndIcon)
            
            // Entirely custom Label
            Label {
                Text("Custom Label")
                    .foregroundStyle(.primary)
                    .font(.largeTitle)
                    .padding()
                    .background(.gray.opacity(0.2))
                    .clipShape(Capsule())
            } icon: {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.orange)
                    .frame(width: 64, height: 64)
            }
        }
    }
}

#Preview {
    LabelView()
}
