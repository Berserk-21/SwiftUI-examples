//
//  MainView.swift
//  iDine
//
//  Created by Berserk on 13/08/2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil")
                }
            
            FavoritesView()
                .tabItem { 
                    Label("Order", systemImage: "heart.fill")
                }
        }
    }
}

#Preview {
    MainView()
        .environmentObject(Order())
}
