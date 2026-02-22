//
//
//  AddTaskView.swift
//  SwiftUIStateDemo
//
//  Created by Chandu on 2/21/26.
//

import SwiftUI

struct AddTaskView: View {

    /// `@ObservedObject`
    /// - Observes ViewModel owned by parent
    /// - Does NOT manage lifecycle
    @ObservedObject var viewModel: TaskListViewModel

    /// `@State`
    /// - Local text input state
    @State private var title: String = ""

    /// System-provided dismiss action
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack {
            Form {
                TextField("Task title", text: $title)
            }
            .navigationTitle("New Task")
            .toolbar {
                Button("Save") {
                    viewModel.addTask(title: title)
                    dismiss()
                }
                .disabled(title.isEmpty)
            }
        }
    }
}
