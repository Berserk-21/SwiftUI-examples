//
//  FormatTextView.swift
//  StaticText
//
//  Created by Berserk on 14/08/2024.
//

import SwiftUI

struct FormatTextView: View {
    
    @State private var ingredients = ["Tomato", "Orange juce"]
    @State private var rolls = [3, 2, 5]
    let length = Measurement(value: 225, unit: UnitLength.centimeters)
    
    let dueDate = Date.now
    static let dateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    
    var body: some View {
        // Text format: list.
        VStack {
            Text(ingredients, format: .list(type: .and))
            Button("Add ingredients") {
                let possibles = ["Egg", "Sausage", "Bacon", "Spam"]
                
                if let newIngredient = possibles.randomElement() {
                    ingredients.append(newIngredient)
                }
            }
        }
        .padding()
        
        // Text format: list of number.
        VStack {
            Text(rolls, format: .list(memberStyle: .number, type: .and))
            Button("Roll Dice") {
                let result = Int.random(in: 0...6)
                rolls.append(result)
            }
        }
        .padding()
        
        // Text format: distance measure.
        Text(length, format: .measurement(width: .wide))
            .padding()
        
        // Text format: currency.
        Text(100, format: .currency(code: "CAD"))
            .padding()
        
        // To support versions before iOS 15
        Text("Task due date: \(dueDate, formatter: Self.dateFormatter)")
    }
}

#Preview {
    FormatTextView()
}
