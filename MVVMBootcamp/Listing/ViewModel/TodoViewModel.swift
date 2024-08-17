//
//  TodoViewModel.swift
//  MVVMBootcamp
//
//  Created by Sukritha K K on 11/05/24.
//

import Foundation

class TodoViewModel: ObservableObject {
   @Published var items: [TodoItem] = [
        TodoItem(title: "Grocery shopping", isChecked: true),
        TodoItem(title: "Finish report for client A", isChecked: false),
        TodoItem(title: "Learn a new coding language", isChecked: true),
        TodoItem(title: " Take out the trash", isChecked: false)]

    func toggleItem(item: TodoItem) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index].isChecked.toggle()
        }
    }

    func addItem() {
        items.append(TodoItem(title: "New Item", isChecked: false))
    }
}
