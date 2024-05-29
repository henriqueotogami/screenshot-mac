//
//  MenuBarSettingsView.swift
//  screenshot-mac
//
//  Created by Henrique Matheus Alves Pereira on 29/05/24.
//

import SwiftUI

struct MenuBarSettingsView: View {
    @AppStorage("menuBarExtraIsInserted") var menuBarExtraIsInserted = true
    var body: some View {
        Form {
            Toggle("show menu bar extra", isOn: $menuBarExtraIsInserted)
        }
    }
}

#Preview {
    MenuBarSettingsView()
}
