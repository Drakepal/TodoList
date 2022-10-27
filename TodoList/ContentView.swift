//
//  ContentView.swift
//  TodoList
//
//  Created by PM Student on 10/26/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        List {
            ForEach(listViewModel.items) { item in
                ListRowView(item: item)
                    .onTapGesture {
                        withAnimation(.none) {
                            listViewModel.updateItem(item: item)
                        }
                    }
            }
            
            .onDelete(perform: listViewModel.deleteItems)
            .onMove(perform: listViewModel.moveItem)
            
           
        }
        .listStyle(PlainListStyle())
            .navigationTitle("Todo List 📝")
            .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView()))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
        .environmentObject(ListViewModel())
    }
}


