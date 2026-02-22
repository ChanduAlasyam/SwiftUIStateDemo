//
//  TaskListViewModel.swift
//  SwiftUIStateDemo
//
//  Created by Chandu on 2/21/26.
//

import Foundation

/// ViewModel responsible for task business logic
final class TaskListViewModel: ObservableObject {

    /// `@Published`
    /// - Triggers UI updates
    /// - Changes automatically saved to disk
    @Published var tasks: [Task] = [] {
        didSet {
            saveTasks()
        }
    }

    /// UserDefaults key
    private let storageKey = "savedTasks"

    /// Initializes ViewModel and loads persisted data
    init() {
        loadTasks()
    }

    // MARK: - Public Actions

    func addTask(title: String) {
        let newTask = Task(title: title, isCompleted: false)
        tasks.append(newTask)
    }

    func toggleTask(_ task: Task) {
        guard let index = tasks.firstIndex(where: { $0.id == task.id }) else { return }
        tasks[index].isCompleted.toggle()
    }

    // MARK: - Persistence

    /// Saves tasks to UserDefaults
    private func saveTasks() {
        do {
            let data = try JSONEncoder().encode(tasks)
            UserDefaults.standard.set(data, forKey: storageKey)
        } catch {
            print("❌ Failed to save tasks:", error)
        }
    }

    /// Loads tasks from UserDefaults
    private func loadTasks() {
        guard let data = UserDefaults.standard.data(forKey: storageKey) else { return }

        do {
            tasks = try JSONDecoder().decode([Task].self, from: data)
        } catch {
            print("❌ Failed to load tasks:", error)
        }
    }
}
