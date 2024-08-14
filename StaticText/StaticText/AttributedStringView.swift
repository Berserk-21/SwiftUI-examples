//
//  AttributedStringView.swift
//  StaticText
//
//  Created by Berserk on 14/08/2024.
//

import SwiftUI

struct AttributedStringView: View {
    
    // We can set the string layout rather than the TextView that contains it.
    var message: AttributedString {
        var result = AttributedString("Hello, what's up!")
        result.font = .largeTitle
        result.foregroundColor = .white
        result.backgroundColor = .red
        return result
    }
    
    var message2: AttributedString {
        var result = AttributedString("Hello, life's goood")
        result.font = .largeTitle
        result.foregroundColor = .white
        result.backgroundColor = .blue
        return result
    }
    
    // Adds an underline style
    var message3: AttributedString {
        var result = AttributedString("Underline style example")
        result.font = .largeTitle
        result.foregroundColor = .white
        result.backgroundColor = .gray
        result.underlineStyle = Text.LineStyle(pattern: .solid, color: .black)
        return result
    }
    
    // Adds a tapable link.
    var linkMessage: AttributedString {
        var result = AttributedString("Learn SwiftUI here!")
        result.font = .largeTitle
        result.link = URL(string: "https://www.hackingwithswift.com")
        return result
    }
    
    // Set a text to be spelled out for accessibility.
    var messageAccessibilitySpeech: AttributedString {
        var password = AttributedString("sdlf034Jfd-zpp@&")
        password.accessibilitySpeechSpellsOutCharacters = true
        return "Your password is: " + password
    }
    
    // Apply style changes to a date component.
    var dateComponentString: AttributedString {
        var result = Date.now.formatted(.dateTime.weekday(.wide).day().month(.wide).attributed)
        result.foregroundColor = .secondary
        
        let weekday = AttributeContainer.dateField(.weekday)
        let weekdayStyling = AttributeContainer.foregroundColor(.primary)
        result.replaceAttributes(weekday, with: weekdayStyling)
        
        return result
    }
    
    // Apply style changes to a personName component.
    var personNameComponentString: AttributedString {
        var components = PersonNameComponents()
        components.givenName = "Michael"
        components.familyName = "Douglas"
        
        var result = components.formatted(.name(style: .long).attributed)
        
        let familyNameStyling = AttributeContainer.font(.headline)
        let familyName = AttributeContainer.personNameComponent(.familyName)
        
        result.replaceAttributes(familyName, with: familyNameStyling)
        
        return result
    }
    
    // Apply style changes to a date component.
    var distanceString: AttributedString {
        
        var amount = Measurement(value: 200, unit: UnitLength.kilometers)
        var result = amount.formatted(.measurement(width: .wide).attributed)
        
        let distanceStyling = AttributeContainer.font(.title)
        let distance = AttributeContainer.measurement(.value)
                
        result.replaceAttributes(distance, with: distanceStyling)
        
        return result
    }
    
    var body: some View {
        Text(message)
            .padding()
        Text(message + message2)
            // the background colors is applied under the attributed string layout.
            .background(.black)
            .padding()
        Text(message3)
            .padding()
        Text(linkMessage)
            .padding()
        Text(dateComponentString)
            .padding()
        Text(personNameComponentString)
            .padding()
        Text(distanceString)
            .padding()
    }
}

#Preview {
    AttributedStringView()
}
