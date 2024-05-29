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
    @AppStorage("menuBarExtraIsInserted") var menuBarExtraIsInserted = true
    var body: some Scene {
        MenuBarExtra("Screenshots", systemImage: "photo.badge.plus", isInserted: $menuBarExtraIsInserted) {
            MenuBarContentView(viewModel: viewModel)
        }
        .menuBarExtraStyle(.window)
        
        Settings { SettingsView() }
    }
}
