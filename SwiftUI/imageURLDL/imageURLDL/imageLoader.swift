//
//  imageLoader.swift
//  imageURLDL
//
//  Created by Michał Grycki on 23/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import Foundation

class ImageLoader: ObservableObject {
    @Published var downloadedData: Data?
    
    func downloadImage(url: String) {
        guard let imageURL = URL(string: url) else {
            return
        }
        
        URLSession.shared.dataTask(with: imageURL) { data, _, error in
            
            guard let data = data, error == nil else {
                return
            }
            
            DispatchQueue.main.async {
                self.downloadedData = data
                
            }
            
            
        }.resume()
    }
}
