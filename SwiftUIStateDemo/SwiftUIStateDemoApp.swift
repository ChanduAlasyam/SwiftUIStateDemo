//
//  SwiftUIStateDemoApp.swift
//  SwiftUIStateDemo
//
//  Created by Chandu on 2/21/26.
//

import SwiftUI

@main
struct SwiftUIStateDemoApp: App {
    
    /// `@StateObject`
    /// - Creates and owns the global app settings
    /// - Lives for the entire lifecycle of the app
    /// - Injected into the environment for child views
    @StateObject private var appSettings = AppSettings()
    
    var body: some Scene {
        WindowGroup {
            /// RootView acts as the app shell / coordinator
            RootView()
            /// `@EnvironmentObject`
            /// - Makes AppSettings available to all child views
                .environmentObject(appSettings)
        }
    }
}
