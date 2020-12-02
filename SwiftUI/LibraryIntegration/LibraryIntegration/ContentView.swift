//
//  ContentView.swift
//  LibraryIntegration
//
//  Created by Michał Grycki on 20/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showImagePicker: Bool = false
    @State private var image: Image? = nil
    
    var body: some View {
        VStack {
            
            image?.resizable().scaledToFit()
            
            Button("Open Camera") {
                self.showImagePicker = true
                
            }.padding().background(Color.green).foregroundColor(Color.white).cornerRadius(10).sheet(isPresented: self.$showImagePicker) {
                photoCaptureView(showImagePicker: self.$showImagePicker, image: self.$image)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
