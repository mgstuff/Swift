//
//  dishDetails.swift
//  ListNavigation
//
//  Created by Michał Grycki on 17/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct dishDetails: View {
    
    @State private var zoomed: Bool = false
    let dish: Dish
    
    var body: some View {
        VStack {
            Image(dish.imageURL).resizable().aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation{
                        self.zoomed.toggle()
                    }
            }
            Text(dish.name)
            Text(String(format: "%.2f", dish.price))
        }
        .navigationBarTitle(
            Text(dish.name), displayMode: .inline)
    }
}

struct dishDetails_Previews: PreviewProvider {
    static var previews: some View {
        dishDetails(dish: Dish(name: "some dish", imageURL: "pasta", price: 3.23))
    }
}
