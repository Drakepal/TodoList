//
//  AddView.swift
//  TodoList
//
//  Created by PM Student on 10/26/22.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type somthing here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(.systemGray5))
                .cornerRadius(10)
                
                Button(action: saveButtonPressed, label: {
                    Text("SAVE")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(14)
        }
        .navigationTitle("Add an item ✏️")
    }
    func saveButtonPressed() {
        listViewModel.addItem(title: textFieldText)
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
