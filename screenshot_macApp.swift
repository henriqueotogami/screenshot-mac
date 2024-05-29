//
//  screenshot_macApp.swift
//  screenshot-mac
//
//  Created by Henrique Matheus Alves Pereira on 20/05/24.
//

import SwiftUI

@main
struct screenshot_macApp: App {
    @StateObject var viewModel = ScreenCaptureViewModel()
    var body: some Scene {
        WindowGroup("Screenshots", id:"main", content: { ContentView(viewModel: viewModel) })
        Settings { SettingsView() }
    }
}
