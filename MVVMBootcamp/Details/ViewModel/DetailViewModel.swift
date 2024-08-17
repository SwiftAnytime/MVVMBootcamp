//
//  DetailViewModel.swift
//  MVVMBootcamp
//
//  Created by Sukritha K K on 16/07/24.
//

import Foundation

class DetailViewModel: ObservableObject {
    @Published var item: TodoItem
    @Published var title: String

    init(item: TodoItem) {
        self.item = item
        title = item.title
    }

    func toggleItem(item: TodoItem) {
        self.item.isChecked.toggle()
    }

    func updateItem() {
        // Update logic for the item based on title and isChecked properties
    }
}
