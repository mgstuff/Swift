//
//  ContentView.swift
//  Hiking
//
//  Created by Michał Grycki on 21/09/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct ContentView: View
{
    
    let hikes = Hike.all()
    
    var body: some View
    {
        // Adding navigation on top to the app
        NavigationView {
            
            
            // Calling array of hikes
            // every child of list, element which will be displayed has to have id, in our case it is name
            List(self.hikes, id: \.name) { hike in
                // 1.Using navigationLink to create step into detailed view on particular cell from the list
                // 2. As destination: we point to struct hikeDetails and passing struct hike
                NavigationLink(destination: hikeDetail(hike: hike)) {
                    HikeCell(hike: hike)
                }
            }
            .navigationBarTitle("Hikings")
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Created automatically which is child controll which is representing 1 Cell
struct HikeCell: View {
    
    let hike: Hike
    
    var body: some View {
        HStack {
            //.resizable must to used to enable changing size with .frame
            Image(hike.imageURL).resizable().frame(width:100, height: 100)
                .cornerRadius(16)
            VStack {
                Text(hike.name)
                Text("\(hike.miles) miles")
            }
        }
    }
}
