//
//  ImageUtils.swift
//  Appetizers
//
//  Created by Vaibhu Thakkar on 04/01/25.
//

import SwiftUI

class ImageLoader: ObservableObject {
    
    @Published var image: Image? = nil
    
    func load(fromUrlString urlString: String) {
        NetworkManager.shared.downloadImage(fromUrlString: urlString) { uiImage in
            guard let uiImage = uiImage else { return }
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
        }
    }
}

struct RemoteImage: View {
    var image: Image?
    
    var body: some View {
        image?.resizable() ?? Image("food-placeholder").resizable()
    }
}

struct AppetizerImage: View {
    
    @StateObject var imageLoader = ImageLoader()
    var urlString: String
    
    var body: some View {
        RemoteImage(image: imageLoader.image)
            .onAppear() {
                imageLoader.load(fromUrlString: urlString)
            }
    }
}
