//
//  FavoritesModel.swift
//  iDine
//
//  Created by Berserk on 13/08/2024.
//

import Foundation

class Favorites: ObservableObject {
    
    @Published var items = [MenuItem]()
    
    func save(item: MenuItem) {
        if let index = items.firstIndex(of: item) {
            items.remove(at: index)
        } else {
            items.append(item)
        }
    }
    
    func isSaved(item: MenuItem) -> Bool {
        return items.contains(item)
    }
}
