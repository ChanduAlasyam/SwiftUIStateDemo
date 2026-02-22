//
//  Task.swift
//  SwiftUIStateDemo
//
//  Created by Chandu on 2/21/26.
//

import Foundation

/// Domain model
/// - Codable so it can be persisted
/// - Identifiable for SwiftUI lists
struct Task: Identifiable, Codable {
    let id: UUID
    var title: String
    var isCompleted: Bool

    init(id: UUID = UUID(), title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
}
