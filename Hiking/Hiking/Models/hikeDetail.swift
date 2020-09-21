//
//  hikeDetail.swift
//  Hiking
//
//  Created by Michał Grycki on 21/09/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

// Second screen to display hike details
struct hikeDetail: View {
    
    // creating variable hike of Struct type Hike
    let hike: Hike
    
    // 3. Variable for zooming
    @State private var zommed: Bool = false
    
    var body: some View {
        
        VStack {
            
            Image(hike.imageURL)
                .resizable()
                // 3. actual zooming
                .aspectRatio(contentMode: self.zommed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        self.zommed.toggle()
                    }
                    
            }
            Text(hike.name)
            Text(String(format: "%.2f", hike.miles))
        }
    }
}

struct hikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        hikeDetail(hike: Hike(name: "Hiking", imageURL: "green", miles: 10.5))
    }
}
