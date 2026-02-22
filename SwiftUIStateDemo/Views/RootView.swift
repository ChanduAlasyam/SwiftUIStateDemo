//
//  RootView.swift
//  SwiftUIStateDemo
//
//  Created by Chandu on 2/21/26.
//

import SwiftUI

struct RootView: View {

    /// `@StateObject`
    /// - RootView owns the TaskListViewModel
    /// - Survives navigation changes
    /// - Acts as single source of truth
    @StateObject private var taskListViewModel = TaskListViewModel()

    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Tasks") {
                    /// Pass ViewModel down
                    TaskListView(viewModel: taskListViewModel)
                }

                NavigationLink("Settings") {
                    SettingsView()
                }
            }
            .navigationTitle("Task Manager")
        }
    }
}

#Preview {
    RootView().environmentObject(AppSettings())
}
