//
//  KeyboardShortcutsView.swift
//  screenshot-mac
//
//  Created by Henrique Matheus Alves Pereira on 29/05/24.
//

import SwiftUI
import KeyboardShortcuts

struct KeyboardShortcutsView: View {
    var body: some View {
        Form {
            KeyboardShortcuts.Recorder("Screenshot Full: ",     name: .screenshotCaptureFull)
            KeyboardShortcuts.Recorder("Screenshot Window: ",   name: .screenshotCaptureWindow)
            KeyboardShortcuts.Recorder("Screenshot Area: ",     name: .screenshotCaptureArea)
        }
        .padding()
    }
}

#Preview {
    KeyboardShortcutsView()
}
