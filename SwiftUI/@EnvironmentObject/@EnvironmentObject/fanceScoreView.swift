//
//  fanceScoreView.swift
//  @EnvironmentObject
//
//  Created by Michał Grycki on 11/10/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct fanceScoreView: View {
    
    // send from outside
    @Binding var score: Int
    
    var body: some View {
        VStack {
            Text("0")
            Button("Increment Score") {
                self.score += 1
                
            }.padding().background(Color.green)
        }.padding().background(Color.orange)
    }
}

struct fanceScoreView_Previews: PreviewProvider {
    static var previews: some View {
        fanceScoreView(score: .constant(0))
    }
}
