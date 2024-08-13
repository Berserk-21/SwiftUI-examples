//
//  FavoritesView.swift
//  iDine
//
//  Created by Berserk on 13/08/2024.
//

import SwiftUI

struct FavoritesView: View {
    
    @EnvironmentObject var favorites: Favorites
    
    var body: some View {
        
        if favorites.items.isEmpty {
            Text("Save your favorite items to find them here!")
        } else {
            NavigationStack {
                List {
                    ForEach(favorites.items) { item in
                        NavigationLink(value: item) {
                            ItemRow(item: item)
                        }
                    }
                }
                .navigationDestination(for: MenuItem.self) { item in
                    ItemDetail(item: item)
                }
            }
        }
    }
}

#Preview {
    FavoritesView()
        .environmentObject(Favorites())
}
