//
//  ItemDetail.swift
//  iDine
//
//  Created by Berserk on 13/08/2024.
//

import SwiftUI

struct ItemDetail: View {
    
    // The value is set at the environment level.
    // @EnvironmentObject tells SwiftUI to watch for any changes and refresh its UI.
    @EnvironmentObject var order: Order
    @EnvironmentObject var favorites: Favorites
    
    let item: MenuItem
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit()
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(.black)
                    .font(.caption)
                    .foregroundStyle(.white)
                    .offset(x: -5, y: -5)
            }
            Text(item.description)
                .padding()
            Button("Order This") {
                order.add(item: item)
            }
            .padding(5)
            .background(.blue)
            .border(.blue, width: 5)
            .clipShape(.buttonBorder)
            .foregroundStyle(.white)
            .font(.headline)
            Spacer()
        }
        .toolbar(content: {
            Button {
                favorites.save(item: item)
            } label: {
                Image(systemName: favorites.isSaved(item: item) ? "heart.fill" : "heart")
            }
        })
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ItemDetail(item: MenuItem.example)
                .environmentObject(Order())
        }
    }
}
