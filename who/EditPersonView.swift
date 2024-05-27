//
//  EditPersonView.swift
//  who
//
//  Created by Shwetank Shivam on 27/05/24.
//

import SwiftUI

struct EditPersonView: View {
    @Bindable var person: Person
    var body: some View {
        Form{
            Section{
                TextField("Name", text: $person.name).textContentType(.name)
                TextField("Email address", text: $person.emailAddress).textContentType(.emailAddress).textInputAutocapitalization(.never)
                
            }
            Section("Notes"){
                TextField("Details about this person", text: $person.details, axis: .vertical)
            }
            .navigationTitle("Edit Person")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

//#Preview {
//    EditPersonView()
//}
