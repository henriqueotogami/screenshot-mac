//
//  SettingsView.swift
//  screenshot-mac
//
//  Created by Henrique Matheus Alves Pereira on 29/05/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        TabView {
            KeyboardShortcutsView()
                .tabItem { Label("Keyboard", systemImage: "keyboard") }
            Text("Second")
                .tabItem { Label("Second", systemImage: "gear")}
        }
    }
}

#Preview {
    SettingsView()
}
