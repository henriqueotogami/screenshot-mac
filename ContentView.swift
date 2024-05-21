//
//  ContentView.swift
//  screenshots
//
//  Created by Henrique Matheus Alves Pereira on 17/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ScreenCaptureViewModel()
    
    var body: some View {
        
        VStack {
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 200, maximum: 300))]){
                    ForEach(viewModel.images, id: \.self) { image in
                        Image(nsImage: image)
                            .resizable()
                            .scaledToFit()
                            .onDrag({ NSItemProvider(object: image) })
                            .draggable(image)
                    }
                }
            }
            
            HStack {
                Button("Make a full screenshot") {
                    viewModel.takeScreenshot(for: .full)
                }
                
                Button("Make a window screenshot") {
                    viewModel.takeScreenshot(for: .window)
                }
                
                Button("Make an area screenshot") {
                    viewModel.takeScreenshot(for: .area)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
