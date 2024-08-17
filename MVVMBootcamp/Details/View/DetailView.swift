//
//  DetailView.swift
//  MVVMBootcamp
//
//  Created by Sukritha K K on 16/07/24.
//

import SwiftUI

extension DetailView {
    init(item: TodoItem) {
        _viewModel = StateObject(wrappedValue: DetailViewModel(item: item))
    }
}

struct DetailView: View {
    @StateObject var viewModel: DetailViewModel

    var body: some View {
        VStack {
            HStack {
                TextField("Title", text: $viewModel.title)
                    .foregroundColor(viewModel.item.isChecked ? .gray : .black)
                Spacer()
                Image(systemName: viewModel.item.isChecked ? "checkmark.circle" : "circle")
                    .onTapGesture {
                        viewModel.toggleItem(item: viewModel.item)
                    }
            }
            Button("Save") {
                viewModel.updateItem()
            }
        }
        .padding()
        .navigationTitle("Details")
    }
}
