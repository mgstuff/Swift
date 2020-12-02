//
//  newViews.swift
//  newproj
//
//  Created by Michał Grycki on 23/10/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct newViews: View {
    
    var dish: dish
    
    var body: some View {
        VStack {
            Image(dish.imageURL)
        }
    }
}

struct newViews_Previews: PreviewProvider {
    static var previews: some View {
        newViews(dish: <#dish#>)
    }
}
