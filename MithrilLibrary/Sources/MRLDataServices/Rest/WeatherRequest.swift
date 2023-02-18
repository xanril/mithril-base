//
//  WeatherRequest.swift
//  MithrilBase
//
//  Created by Kristian Mitra on 5/23/22.
//

import Foundation
import MRLDataServiceProtocols

struct WeatherRequest {
    
    let dataClient: DataClientProtocol
    
    init(dataClient: DataClientProtocol) {
        self.dataClient = dataClient
    }
    
    func getWeather(city: String, apiKey: String) async throws -> WeatherResponse?  {
        let uri = "https://api.openweathermap.org/data/2.5/weather"
        let parameters = [
            "q": city,
            "appid": apiKey,
            "units": "metric"
        ]
        
        var responseReceived: WeatherResponse? = nil
        responseReceived = try await dataClient.get(uri: uri, parameters: parameters)
        
        return responseReceived
    }
}
