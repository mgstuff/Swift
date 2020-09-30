//
//  dishList.swift
//  @State
//
//  Created by Michał Grycki on 29/09/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct dishList: View {
    
    // Display all dish
    var model = Dish.all()
    
    // State feature and binding, when we changing state of particular view we need to use State property, this is local content that's why we use private
    @State private var isSpicy = false
    
    var body: some View {
        
        List {
            //$ - binding syntax
            Toggle(isOn: $isSpicy) {
                Text("isSpicy").font(.title)
            }
            
            
            // Filtering array using built-in function
            ForEach(model.filter { $0.isSpicy == self.isSpicy }) { dish in
                
                HStack {
                    Image(dish.iamgeURL).resizable().frame(width: 100, height: 100)
                    // Adding nil as argument to lineLimit helps to wrap up text if it's too long
                    Text(dish.name).font(.title).lineLimit(nil)
                    
                    //Extend next image to right-hand side
                    Spacer()
                    Text(String(self.isSpicy))
                    // Display spicy icon only if dish is spicy
                    if(dish.isSpicy) {
                        Image("spicy-icon").resizable().frame(width: 35, height: 35)
                    }
                    
                    
                }
            }
        }

    }
}

struct dishList_Previews: PreviewProvider {
    static var previews: some View {
        dishList()
    }
}
