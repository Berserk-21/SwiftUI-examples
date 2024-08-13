//
//  ItemDetail.swift
//  iDine
//
//  Created by Berserk on 13/08/2024.
//

import SwiftUI

struct ItemDetail: View {
    
    let item: MenuItem
    
    var body: some View {
        VStack {
            Image(item.mainImage)
            Text(item.description)
        }
        .navigationTitle(item.name)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ItemDetail(item: MenuItem.example)
        }
    }
}
