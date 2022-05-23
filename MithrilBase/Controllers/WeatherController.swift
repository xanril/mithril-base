//
//  WeatherController.swift
//  MithrilBase
//
//  Created by Kristian Mitra on 5/23/22.
//

import Foundation

class WeatherController {
    
    private let dataService: WeatherDataService = WeatherDataService()
    
    public func getWeather(city: String) -> WeatherBusinessModel {
        
        return dataService.getWeather(city: city)
    }
}
