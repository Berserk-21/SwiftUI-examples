//
//  iDineApp.swift
//  iDine
//
//  Created by Berserk on 13/08/2024.
//

import SwiftUI

@main
struct iDineApp: App {
    
    @StateObject var order = Order()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(order)
        }
    }
}
