//
//  SpeedScoreView.swift
//  ObserveUser
//
//  Created by Michał Grycki on 18/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct SpeedScoreView: View {
    
    @EnvironmentObject var userSettings: UserSettings

    
    var body: some View {
        VStack {
            Text("\(self.userSettings.score)")
            
            Button("Increment Score") {
                self.userSettings.score += 1
            }.padding().background(Color.red)
            
        }.padding().background(Color.green)
    }
}

struct SpeedScoreView_Previews: PreviewProvider {
    static var previews: some View {
        SpeedScoreView()
    }
}
