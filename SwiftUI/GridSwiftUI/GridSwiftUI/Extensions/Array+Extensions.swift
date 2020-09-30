//
//  Array+Extensions.swift
//  GridSwiftUI
//
//  Created by Michał Grycki on 25/09/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import Foundation

extension Array {
    
    func chunks(size: Int) -> [ArraySlice<Element>] {
        
        // Type of ArraySlice
        var chunks: [ArraySlice<Element>] = [ArraySlice<Element>]()
        
        //From first element to last with step definined by size
        for index in stride(from: 0, to: self.count - 1, by: size) {
            
            var chunk = ArraySlice<Element>()
            let end = index + size
            
            if end >= self.count {
                chunk = self[index..<self.count]
            } else {
                chunk = self[index..<end]
            }
            
            chunks.append(chunk)
            
            if (end + 1) == self.count {
                let remainingChunk = self[end..<self.count]
                chunks.append(remainingChunk)
            }
            
            
        }
        
        return chunks
    }
}
