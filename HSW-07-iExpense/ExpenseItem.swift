//
//  ExpenseItem.swift
//  HSW-07-iExpense
//
//  Created by Manuel Casocavallo on 31/03/21.
//

import Foundation

struct ExpenseItem: Identifiable {
    let id = UUID()
    let name: String
    let type: String
    let amount: Int
}
