//
//  weatherViewModel.swift
//  WeatherForecast
//
//  Created by Michał Grycki on 15/10/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import Foundation
// Combine is used to provide update
import Combine

// Providing appropiate data and all information to the view
// It is ObservableObject
class weatherViewModel: ObservableObject {
    
    private var weatherService: WeatherService!
    
    @Published var weather = Weather()
    
    init() {
        self.weatherService = WeatherService()
    }
    
    private func fetchWeather(by city: String) {
        self.weatherService.getWeather(city: city) { weather in
            if let weather = weather {
                self.weather = weather
            }
        }
    }
    
}
