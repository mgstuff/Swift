//
//  ContentView.swift
//  imageURLDL
//
//  Created by Michał Grycki on 23/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        URLImageView(url: "https://www.publicdomainpictures.net/pictures/40000/nahled/golden-retriever-dog.jpg")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
