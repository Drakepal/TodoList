//
//  TodoListApp.swift
//  TodoList
//
//  Created by PM Student on 10/26/22.
//

import SwiftUI

@main
struct TodoListApp: App {
    
    @StateObject var listviewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .environmentObject(listviewModel)
        }
    }
}
