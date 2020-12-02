//
//  ContentView.swift
//  PickingDate
//
//  Created by Michał Grycki on 23/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State private var selectedDate = Date()
    
    var body: some View {
        VStack {
            ProgressVi
            TextEditor(text: $description)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
