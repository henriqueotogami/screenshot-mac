//
//  KeyboardShortcuts+Global.swift
//  screenshot-mac
//
//  Created by Henrique Matheus Alves Pereira on 29/05/24.
//

import Foundation
import KeyboardShortcuts

extension KeyboardShortcuts.Name {
    
    static let screenshotCaptureFull    = Self("screenshotCatureFull", default: .init(.three, modifiers: [.option, .command]))
    static let screenshotCaptureWindow  = Self("screenshotCatureWindow", default: .init(.four, modifiers: [.option, .command]))
    static let screenshotCaptureArea    = Self("screenshotCatureArea", default: .init(.five, modifiers: [.option, .command]))
    
}
