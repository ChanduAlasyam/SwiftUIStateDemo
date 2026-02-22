//
//  AppSettings.swift
//  SwiftUIStateDemo
//
//  Created by Chandu on 2/21/26.
//

import SwiftUI

/// Global shared state for the entire app
/// Used for preferences and cross-feature communication
final class AppSettings: ObservableObject {

    /// `@AppStorage`
    /// - Persists value in UserDefaults
    /// - Automatically survives app restarts
    /// - Behaves like @State but backed by storage
    @AppStorage("showCompletedTasks")
    var showCompletedTasks: Bool = true
}
