//
//  weatherModel.swift
//  WeatherForecast
//
//  Created by Michał Grycki on 13/10/2020.
//  Copyright © 2020 Michał Grycki. All rights reserved.
//

import Foundation


//Outer structure for JSON response
// Decodable means it is able to decode received data
struct WeatherResponse: Decodable {
    let main: Weather
}

//Strcutre to receive data
struct Weather: Decodable
{
    var temp: Double?
    var humidity: Double?
}
