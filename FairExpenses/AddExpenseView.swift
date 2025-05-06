//
//  AddExpenseView.swift
//  FairExpenses
//
//  Created by Lin Ochoa on 5/6/25.
//

import SwiftUI

struct AddExpenseView: View {
    
    @Environment(\.dismiss) var dissmiss
    
    @State private var buyerName = ""
    @State private var purchasedItem = ""
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    HStack {
                        Text("Who is buying?")
                        TextField("Name", text: $buyerName)
                    }
                    HStack {
                        Text("What did they buy?")
                        TextField("Item or service", text: $purchasedItem)
                    }
                }
            }
            .navigationTitle("Add Expense")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dissmiss()
                    }
                }
            }
        }
    }
}

#Preview {
    AddExpenseView()
}
