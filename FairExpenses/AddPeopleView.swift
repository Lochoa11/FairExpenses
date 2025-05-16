//
//  AddPeopleView.swift
//  FairExpenses
//
//  Created by Lin Ochoa on 5/7/25.
//

import SwiftUI

struct AddPeopleView: View {
    
    @State private var nameOfNewPerson = ""
    @State private var people: [String] = []
    
    @Environment(\.dismiss) var dissmiss
    
    var body: some View {
        NavigationStack {
            Form {
                List {
                    ForEach(people, id: \.self) { person in
                        Text(person)
                    }
                }
                Section {
                    HStack {
                        Text("Name:")
                        TextField("Name", text: $nameOfNewPerson)
                    }
                    HStack {
                        Spacer()
                        Button("Add new person") {
                            addNewPerson()
                        }
                        Spacer()
                    }
                }
                Section {
                    Button("Begin tracking") {
                        beginTracking()
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dissmiss()
                    }
                }
            }
        }
    }
    
    func addNewPerson() {
        people.append(nameOfNewPerson)
        nameOfNewPerson = ""
    }
    
    func beginTracking() {
        
    }
}

#Preview {
    AddPeopleView()
}
