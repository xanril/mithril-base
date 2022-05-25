//
//  WeatherController.swift
//  MithrilBase
//
//  Created by Kristian Mitra on 5/23/22.
//

import Foundation
import BusinessModels
import ControllerProtocols
import DataServiceProtocols
import DataServices
import Resolver

class WeatherController : WeatherControlling {
    
    @Injected private var dataService: WeatherDataServicing
    
    public func getWeather(city: String, apiKey: String) async -> WeatherBusinessModel {
        
        return await dataService.getWeather(city: city, apiKey: apiKey)
    }
}
