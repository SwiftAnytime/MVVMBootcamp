//
//  TodoListScreen.swift
//  MVVMBootcamp
//
//  Created by Sukritha K K on 11/05/24.
//

import SwiftUI

struct TodoListView: View {
    @StateObject private var viewModel = TodoViewModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.items) { item in
//                    TodoItemView(title: item.title) {
//                        // Update items array
//                        viewModel.toggleItem(item: item)
//                    }
//                    TodoItemView(viewModel: viewModel, item: item)
//                    TodoItemView(item: item)
                    NavigationLink(destination: DetailView(item: item)) {
                        TodoItemView(item: item)
                    }
                }
            }
            .navigationTitle("To-Do List")
            .toolbar {
                Button(action: {
                    // Add new item
                    viewModel.addItem()
                }) {
                    Label("Add", systemImage: "plus")
                }
            }.environmentObject(viewModel)
        }
    }
}

