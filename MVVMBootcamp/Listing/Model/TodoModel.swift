//
//  TodoModel.swift
//  MVVMBootcamp
//
//  Created by Sukritha K K on 11/05/24.
//

import Foundation
struct TodoItem: Identifiable {
    let id = UUID()
    var title: String
    var isChecked: Bool
}
