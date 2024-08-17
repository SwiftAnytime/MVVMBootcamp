//
//  TodoItemView.swift
//  MVVMBootcamp
//
//  Created by Sukritha K K on 01/08/24.
//

import SwiftUI

struct TodoItemView: View {
//    @ObservedObject var viewModel: TodoViewModel
    let item: TodoItem

    var body: some View {
        HStack {
            Text(item.title)
                .foregroundColor(item.isChecked ? .gray : .black)
            Spacer()
//            Image(systemName: item.isChecked ? "checkmark.circle" : "circle")
//                .onTapGesture {
//                    viewModel.toggleItem(item: item)
//                }
//            CheckBox(viewModel: viewModel, item: item)
            CheckBox(item: item)
        }
    }
}

struct CheckBox: View {
//    @ObservedObject var viewModel: TodoViewModel
    @EnvironmentObject var viewModel: TodoViewModel
    let item: TodoItem
    var body: some View {
        Image(systemName: item.isChecked ? "checkmark.circle" : "circle")
            .onTapGesture {
                viewModel.toggleItem(item: item)
            }
    }
}
