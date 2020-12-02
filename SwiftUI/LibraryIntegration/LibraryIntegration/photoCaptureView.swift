//
//  photoCaptureView.swift
//  LibraryIntegration
//
//  Created by Michał Grycki on 20/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct photoCaptureView: View {
    
    @Binding var showImagePicker: Bool
    @Binding var image: Image?
    
    var body: some View {
        imagePicker(isShown: $showImagePicker, image: $image)
    }
}

struct photoCaptureView_Previews: PreviewProvider {
    static var previews: some View {
        photoCaptureView(showImagePicker: .constant(false), image: .constant(Image("")))
    }
}
