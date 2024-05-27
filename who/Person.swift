//
//  Person.swift
//  who
//
//  Created by Shwetank Shivam on 27/05/24.
//

import Foundation
import SwiftData

@Model 
class Person {
    var name: String
    var emailAddress: String
    var details: String
    
    init(name: String, emailAddress: String, details: String) {
        self.name = name
        self.emailAddress = emailAddress
        self.details = details
    }
}
