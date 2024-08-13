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
    let tipAmounts = [10, 15, 20, 25, 0]
    let pickupTimes = ["Now", "Tonight", "Tomorrow Morning"]
    
    @State private var paymentType = "Cash"
    @State private var addLoyaltyDetails = false
    @State private var loyaltyNumber = ""
    @State private var tipAmout = 15
    @State private var showingPaymentAlert = false
    @State private var pickupTime = "Now"
    
    var totalPrice: String {
        let total = Double(order.total)
        let tipValue = total * Double(tipAmout) / 100
        return (total + tipValue).formatted(.currency(code: "USD"))
    }
    
    var body: some View {
        Form {
            Section {
                // Use $property for two ways binding (read and write).
                Picker("How do you want to pay?", selection: $paymentType) {
                    ForEach(paymentTypes, id: \.self) {
                        Text($0)
                    }
                }
                
                Toggle("Add iDine loyalty card", isOn: $addLoyaltyDetails.animation())
                if addLoyaltyDetails {
                    TextField("Enter your iDine ID", text: $loyaltyNumber)
                }
            }
            
            Section("Add a tip?") {
                Picker("Percentage:", selection: $tipAmout) {
                    ForEach(tipAmounts, id: \.self) {
                        Text("\($0)")
                    }
                }
                .pickerStyle(.segmented)
            }
            
            Section("When do you want it?") {
                Picker("Pickup time", selection: $pickupTime) {
                    ForEach(pickupTimes, id: \.self) {
                        Text($0)
                    }
                }
            }
            
            Section("Total: \(totalPrice)") {
                Button("Confirm order") {
                    showingPaymentAlert.toggle()
                }
            }
        }
        .alert("Order confirmed", isPresented: $showingPaymentAlert) {
            
        } message: {
            Text("Your total was \(totalPrice) - thank you!")
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
