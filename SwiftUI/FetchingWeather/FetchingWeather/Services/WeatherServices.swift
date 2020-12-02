//
//  WeatherServices.swift
//  FetchingWeather
//
//  Created by Michał Grycki on 20/11/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import Foundation


class WeatherService {
    
    
    func getWeather(city: String, completion: @escaping (Weather?) -> ()) {
        guard let url = URL(string:"http://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=644975f9ed3df05c9706116dae0d4b0f&units=metric") else {
            completion(nil)
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
            
            if let weatherResponse = weatherResponse {
                let weather = weatherResponse.main
                completion(weather)
            } else {
                completion(nil)
            }
            
        }.resume()
        
    }
}
