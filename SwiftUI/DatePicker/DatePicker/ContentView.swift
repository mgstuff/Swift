//
//  ContentView.swift
//  DatePicker
//
//  Created by Michał Grycki on 23/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedData = Date()
    
    var body: some View {
        VStack {
            DatePicker("Select date", selection: $selectedData)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
