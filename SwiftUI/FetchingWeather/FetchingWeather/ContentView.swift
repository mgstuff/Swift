//
//  ContentView.swift
//  FetchingWeather
//
//  Created by Michał Grycki on 20/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var weatherVM: WeatherViewModel
    
    init() {
        self.weatherVM = WeatherViewModel()
    }
    
    var body: some View {
        VStack {
            
            TextField("Enter city name", text: self.$weatherVM.cityName) {
                self.weatherVM.search()
                }.offset(x:40, y:40).font(.custom("Arial", size: 35)).foregroundColor(Color.white).padding()
            
            Text(self.weatherVM.temperature).font(.custom("Arial", size: 85)).foregroundColor(Color.white).padding()
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity).background(Int(self.weatherVM.temperature)! > 7 ? Image("sun") : Image("winter")).edgesIgnoringSafeArea(.all)
}
}

/* GRAPHICS */
/*
TextField("Enter city name", text: self.$weatherVM.cityName) {
    self.weatherVM.search()
}.offset(x: 40, y:40).font(.system(size: 30)).foregroundColor(Color.black)

Text(self.weatherVM.temperature).font(.custom("Arial", size: 85)).foregroundColor(Color.white).padding()


 .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity).background(Int(self.weatherVM.temperature)! > 7 ? Image("sun") : Image("winter")).edgesIgnoringSafeArea(.all
 */
