//
//  ContentView.swift
//  FairExpenses
//
//  Created by Lin Ochoa on 4/22/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showNewExpenseInputs = false
    @State private var setOfPeople: [String] = []
    
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
            }
            .sheet(isPresented: $showNewExpenseInputs) {
                AddExpenseView()
            }
        }
    }
}

#Preview {
    ContentView()
}
