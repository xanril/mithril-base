//
//  WeatherDataService.swift
//  MithrilBase
//
//  Created by Kristian Mitra on 5/23/22.
//

import Foundation
import MRLBusinessModels
import MRLDataServiceProtocols
import MithrilCoreDataServices

public class WeatherDataService : WeatherDataServicing {
    
    public init() {
        
    }
    
    public func getWeather(city: String, apiKey: String) async throws  -> WeatherBusinessModel {

        var weather: WeatherBusinessModel = WeatherBusinessModel()
        
        do {
            let request = WeatherRequest()
            let response = try await request.getWeather(city: city, apiKey: apiKey)
            
            weather.statusId = response?.weather?.last?.id
            weather.status = response?.weather?.last?.main
            weather.description = response?.weather?.last?.weatherDescription
            weather.temperature = response?.main?.temp
            weather.location = response?.name
        }
        catch {
            throw DataServiceError.error(ErrorCode.unknown, "Error sending weather request", innerError: error)
        }
        
        return weather
    }
}
