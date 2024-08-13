//
//  CheckoutView.swift
//  iDine
//
//  Created by Berserk on 13/08/2024.
//

import SwiftUI

struct CheckoutView: View {
    
    @EnvironmentObject var order: Order
    
    let paymentTypes = ["Cash", "Credit Card", "iDine Points"]
    
    @State private var paymentType = "Cash"
    
    var body: some View {
        Form {
            Section {
                // Use $property for two ways binding (read and write).
                Picker("How do you want to pay?", selection: $paymentType) {
                    ForEach(paymentTypes, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        CheckoutView()
            .environmentObject(Order())
    }
}
