//
//  ItemModel.swift
//  TodoList
//
//  Created by PM Student on 10/26/22.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
