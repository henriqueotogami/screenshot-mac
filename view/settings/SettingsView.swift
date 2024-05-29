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
            MenuBarSettingsView()
                .tabItem { Label("MenuBarExtra", systemImage: "rectangle.topthird.inset.filled")}
        }
        .frame(minWidth: 400, minHeight: 300)
    }
}

#Preview {
    SettingsView()
}
