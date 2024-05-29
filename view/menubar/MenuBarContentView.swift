//
//  MenuBarContentView.swift
//  screenshot-mac
//
//  Created by Henrique Matheus Alves Pereira on 29/05/24.
//

import SwiftUI

struct MenuBarContentView: View {
    
    @ObservedObject var viewModel: ScreenCaptureViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 50, maximum: 100))]){
                    ForEach(viewModel.images, id: \.self) { image in
                        Image(nsImage: image)
                            .resizable()
                            .scaledToFit()
                            .onDrag({ NSItemProvider(object: image) })
                    }
                }
            }
            .contentMargins(20)
            .frame(maxHeight: 200)
            
            HStack {
                Button(action: { viewModel.takeScreenshot(for: .full) },
                       label: { Label("Make a full screenshot", systemImage: "macbook.gen2")})
                
                Button(action: { viewModel.takeScreenshot(for: .window) },
                       label: { Label("Make a window screenshot", systemImage: "macwindow")})
                
                Button(action: { viewModel.takeScreenshot(for: .area) },
                       label: { Label("Make an area screenshot", systemImage: "rectangle.center.inset.filled.badge.plus")})
            }
            .labelStyle(.iconOnly)
        }
    }
}

#Preview {
    MenuBarContentView(viewModel: ScreenCaptureViewModel())
}
