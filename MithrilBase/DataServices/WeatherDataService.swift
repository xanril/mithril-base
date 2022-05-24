//
//  WeatherDataService.swift
//  MithrilBase
//
//  Created by Kristian Mitra on 5/23/22.
//

import Foundation

class WeatherDataService {
    
    public func getWeather(city: String) async -> WeatherBusinessModel {

        let request = WeatherRequest()
        let response = await request.getWeather(city: city)
        
        let weather: WeatherBusinessModel = WeatherBusinessModel()
        
        weather.statusId = response?.weather?.last?.id
        weather.status = response?.weather?.last?.main
        weather.description = response?.weather?.last?.weatherDescription
        weather.temperature = response?.main?.temp
        weather.location = response?.name
        
        return weather
    }
}
