//
//  ContentView.swift
//  Maps
//
//  Created by Michał Grycki on 23/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        
        VStack{
            Text(")")
            Map(MKCoordinateRegion)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
