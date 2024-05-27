//
//  Previewer.swift
//  who
//
//  Created by Shwetank Shivam on 27/05/24.
//

import Foundation
import SwiftData

@MainActor
struct Previewer {
    let container: ModelContainer
    let event: Event
    let person: Person

    init() throws {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        container = try ModelContainer(for: Person.self, configurations: config)

        event = Event(name: "Convocation", location: "Convocation hall")
        person = Person(name: "Shwetank Shivam", emailAddress: "shwetankshivam@gmail.com", details: "", metAt: event)

        container.mainContext.insert(person)
    }
}
