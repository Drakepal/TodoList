//
//  ListViewModel.swift
//  TodoList
//
//  Created by PM Student on 10/26/22.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    func getItems() {
        let newItems = [
            ItemModel(title: "Todo item 1", isCompleted: false),
            ItemModel(title: "Todo item 2", isCompleted: true),
            ItemModel(title: "Todo item 3", isCompleted: false)
        ]
        items.append(contentsOf: newItems)
    }
    func deleteItems(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
}
