//
//  ContentView.swift
//  FairExpenses
//
//  Created by Lin Ochoa on 4/22/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showNewExpenseInputs = false
    @State private var showNumberOfPeopleInputs = false
    
    @State private var setOfPeople: [Person] = []

    var body: some View {
        NavigationStack {
            List {
                Text("Hello world")
            }
            .navigationTitle("Fair Expenses")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add Expense") {
                        showNewExpenseInputs.toggle()
                    }
                }
                ToolbarItem(placement: .topBarLeading) {
                    Button("Add People") {
                        showNumberOfPeopleInputs.toggle()
                    }
                }
            }
            .sheet(isPresented: $showNewExpenseInputs) {
                AddExpenseView()
            }
            .sheet(isPresented: $showNumberOfPeopleInputs) {
                AddPeopleView()
            }
        }
    }
}

#Preview {
    ContentView()
}
