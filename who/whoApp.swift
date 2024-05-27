//
//  whoApp.swift
//  who
//
//  Created by Shwetank Shivam on 27/05/24.
//

import SwiftData
import SwiftUI

@main
struct WhoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Person.self)
    }
}
