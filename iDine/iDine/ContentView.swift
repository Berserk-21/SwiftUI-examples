//
//  ContentView.swift
//  iDine
//
//  Created by Berserk on 13/08/2024.
//

import SwiftUI

struct ContentView: View {
    
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        NavigationStack {
            List {
                // The model should inherit the Identifiable protocol and owns an id property.
                // This helps SwiftUI identify and generate the cells of the list with the ForeEach.
                ForEach(menu) { section in
                    Section(section.name) {
                        ForEach(section.items) { item in
                            NavigationLink(value: item) {
                                ItemRow(item: item)
                            }
                        }
                    }
                }
            }
            .navigationDestination(for: MenuItem.self, destination: { item in
                ItemDetail(item: item)
            })
            .navigationTitle("Menu")
            .listStyle(.grouped)
        }
    }
}

#Preview {
    ContentView()
}
