//
//
//  EditTaskView.swift
//  SwiftUIStateDemo
//
//  Created by Chandu on 2/21/26.
//

import SwiftUI

struct EditTaskView: View {

    /// `@Binding`
    /// - Reference to parent-owned state
    /// - Mutations update the source of truth
    @Binding var task: Task

    var body: some View {
        Form {
            TextField("Title", text: $task.title)

            Toggle("Completed", isOn: $task.isCompleted)
        }
        .navigationTitle("Edit Task")
    }
}
