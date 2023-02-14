//
//  WeatherController.swift
//  MithrilBase
//
//  Created by Kristian Mitra on 5/23/22.
//

import Foundation
import MRLBusinessModels
import MRLControllerProtocols
import MRLDataServiceProtocols

public class WeatherController : WeatherControlling {
    
    private var dataService: WeatherDataServicing
    
    public init(weatherDataService: WeatherDataServicing) {
        dataService = weatherDataService
    }
    
    public func getWeather(city: String, apiKey: String) async -> WeatherBusinessModel {
        
        var response = WeatherBusinessModel()
        
        do {
            response = try await dataService.getWeather(city: city, apiKey: apiKey)
        }
        catch {
            
        }
        
        return response
    }
}
