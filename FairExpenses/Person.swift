//
//  Person.swift
//  FairExpenses
//
//  Created by Lin Ochoa on 5/7/25.
//
import Observation
import SwiftUI

@Observable
class Person: Identifiable {
    var id: UUID
    var name: String
    
    private var balances: [Int]
    
    init(id: UUID = .init(), name: String, persons: [Person]) {
        self.id = id
        self.name = name
        balances = []
        for _ in 0..<persons.count {
            balances.append(0)
        }
    }
}
