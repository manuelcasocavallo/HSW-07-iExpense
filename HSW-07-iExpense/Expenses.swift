//
//  Expenses.swift
//  HSW-07-iExpense
//
//  Created by Manuel Casocavallo on 31/03/21.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()
}
