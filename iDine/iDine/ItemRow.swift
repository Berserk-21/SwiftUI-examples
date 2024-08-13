//
//  ItemRow.swift
//  iDine
//
//  Created by Berserk on 13/08/2024.
//

import SwiftUI

struct ItemRow: View {
    
    let item: MenuItem
    
    var body: some View {
        HStack {
            Image(item.thumbnailImage)
                .clipShape(Circle())
                .overlay {
                    Circle()
                        .stroke(.gray, lineWidth: 2)
                }
            
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                Text("$\(item.price)")
            }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        let item = MenuItem.example
        ItemRow(item: item)
    }
}
