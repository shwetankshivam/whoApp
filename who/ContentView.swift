//
//  ContentView.swift
//  who
//
//  Created by Shwetank Shivam on 27/05/24.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @State private var path = [Person]()
    @Query var people:[Person]
    var body: some View {
        NavigationStack(path : $path){
            List{
                ForEach(people){ person in NavigationLink(value: person){
                    Text(person.name)
                }
                    
                }
            }
            .navigationTitle("Who")
            .navigationDestination(for: Person.self){
                person in Text(person.name)
            }
        }
    }
}

#Preview {
    ContentView()
}
