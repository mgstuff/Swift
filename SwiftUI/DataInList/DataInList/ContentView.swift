//
//  ContentView.swift
//  DataInList
//
//  Created by Michał Grycki on 20/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    private var schoolLev = schoolLevel.all()
    
    var body: some View {
        List{
            ForEach(self.schoolLev, id: \.clas) { sl in
                Section(header: Text(sl.clas).font(.title)) {
                    ForEach(sl.lessonsList, id: \.name) { sli in
                        Text(sli.name)  
                    }
                }
                
            }
            
        }.listStyle(GroupedListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
