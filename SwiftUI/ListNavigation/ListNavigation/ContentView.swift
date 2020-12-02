//
//  ContentView.swift
//  ListNavigation
//
//  Created by Michał Grycki on 17/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let dishes = Dish.all()
    
    var body: some View {
        
        NavigationView {
        
            List(self.dishes, id: \.name) { dish in
                NavigationLink(destination: dishDetails(dish: dish)) {
                    DishCell(dish: dish)
                }
            }
            .navigationBarTitle("Dishes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DishCell: View {
    
    let dish: Dish
    
    var body: some View {
        HStack {
            Image(dish.imageURL)
                .resizable()
                .frame(width: 100, height:100)
                .cornerRadius(16)
            VStack(alignment: .leading){
                Text(dish.name)
                    .font(.title)
                Text(String(format: "%.2f", dish.price))
            }

        }
    }
}
