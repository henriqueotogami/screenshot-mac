//
//  ScreenCaptureViewModel.swift
//  screenshots
//
//  Created by Henrique Matheus Alves Pereira on 17/05/24.
//

import SwiftUI

class ScreenCaptureViewModel: ObservableObject {
    
    /// Enum responsavel por centralizar os parametros que definem cada tipo de
    /// captura de tela
    ///
    /// - Parametros
    ///     - full: captura de tela inteira
    ///     - window: captura de tela de janela inteira
    ///     - area: captura de tela em area
    ///
    /// - Retorno: Uma string contendo o parametro para o tipo de captura informado.
    ///
    enum ScreenshotTypes {
        case full
        case window
        case area
        
        var processArguments: [String] {
            switch self {
            case .full:
                [""]
            case .window:
                ["-cw"]
            case .area:
                ["-cs"]
            }
        }
    }

    @Published var images = [NSImage]()
    
    /// Funcao que realiza a captura de tela mediante o tipo selecionado na tela.
    ///
    func takeScreenshot(for type: ScreenshotTypes) {
        let task = Process()
        task.executableURL = URL(fileURLWithPath: "/usr/sbin/screencapture")
        task.arguments = type.processArguments
        
        do {
            try task.run()
            task.waitUntilExit()
            getImageFromPasteboard()
        } catch {
            print("could not take screenshot: \(error)")
        }
    }
    
    /// Funcao que adiciona a captura de tela realizada na galeria de imagens da view.
    /// 
    private func getImageFromPasteboard() {
        guard NSPasteboard.general.canReadItem(withDataConformingToTypes: NSImage.imageTypes) else { return }
        guard let image = NSImage(pasteboard: NSPasteboard.general) else { return }
        self.images.append(image)
    }
}
