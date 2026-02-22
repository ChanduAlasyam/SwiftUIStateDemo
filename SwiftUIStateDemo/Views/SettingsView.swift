//
//  SettingsView.swift
//  SwiftUIStateDemo
//
//  Created by Chandu on 2/21/26.
//

import SwiftUI

struct SettingsView: View {

    /// `@EnvironmentObject`
    /// - Shared global app settings
    /// - Required dependency (must be injected)
    @EnvironmentObject private var appSettings: AppSettings

    /// `@Environment`
    /// - Reads system-provided value
    /// - Automatically updated by SwiftUI
    @Environment(\.locale) private var locale

    var body: some View {
        Form {
            Toggle("Show Completed Tasks",
                   isOn: $appSettings.showCompletedTasks)

            Text("Locale: \(locale.identifier)")
        }
        .navigationTitle("Settings")
    }
}
