//
//  OrderView.swift
//  iDine
//
//  Created by Berserk on 13/08/2024.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    ForEach(order.items) { item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price)")
                        }
                    }
                }
                
                Section {
                    NavigationLink("Place Order") {
                        CheckoutView()
                    }
                }
            }
            .navigationTitle("Order")
        }
    }
}

#Preview {
    OrderView()
        .environmentObject(Order())
}
