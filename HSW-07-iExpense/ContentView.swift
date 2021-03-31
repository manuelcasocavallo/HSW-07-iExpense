//
//  ContentView.swift
//  HSW-07-iExpense
//
//  Created by Manuel Casocavallo on 31/03/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var expenses = Expenses()
    var body: some View {
        NavigationView {
            List {
                ForEach(expenses.items) { item in
                    Text(item.name)
                }
                .onDelete(perform: removeItems)
            }
            .navigationTitle("iExpense")
            .navigationBarItems(trailing:
                                    Button(action: {
                                        let expense = ExpenseItem(name: "Test", type: "Personal", amount: 5)
                                        expenses.items.append(expense)
                                    }) {
                                        Image(systemName: "plus")
                                    }
                                
            )
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
    
}





















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
