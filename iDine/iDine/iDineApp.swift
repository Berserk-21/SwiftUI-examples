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
    @StateObject var favorites = Favorites()

    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
                .environmentObject(favorites)
        }
    }
}
