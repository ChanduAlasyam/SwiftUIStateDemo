//
//
//  TaskListView.swift
//  SwiftUIStateDemo
//
//  Created by Chandu on 2/21/26.
//

import SwiftUI

struct TaskListView: View {

    /// `@ObservedObject`
    /// - ViewModel is owned by parent (RootView)
    /// - This view only observes changes
    @ObservedObject var viewModel: TaskListViewModel

    /// Local UI-only state
    @State private var showAddTask = false

    /// Global app settings
    @EnvironmentObject private var appSettings: AppSettings

    private var filteredTasks: [Task] {
        appSettings.showCompletedTasks
        ? viewModel.tasks
        : viewModel.tasks.filter { !$0.isCompleted }
    }

    var body: some View {
        List {
            ForEach(filteredTasks) { task in
                NavigationLink {
                    EditTaskView(task: binding(for: task))
                } label: {
                    HStack {
                        Image(systemName: task.isCompleted
                              ? "checkmark.circle.fill"
                              : "circle")
                        Text(task.title)
                    }
                    .onTapGesture {
                        viewModel.toggleTask(task)
                    }
                }
            }
        }
        .navigationTitle("Tasks")
        .toolbar {
            Button {
                showAddTask = true
            } label: {
                Image(systemName: "plus")
            }
        }
        .sheet(isPresented: $showAddTask) {
            AddTaskView(viewModel: viewModel)
        }
    }

    private func binding(for task: Task) -> Binding<Task> {
        guard let index = viewModel.tasks.firstIndex(where: { $0.id == task.id }) else {
            fatalError("Task not found")
        }
        return $viewModel.tasks[index]
    }
}
