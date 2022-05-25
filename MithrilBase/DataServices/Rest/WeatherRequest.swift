//
//  WeatherRequest.swift
//  MithrilBase
//
//  Created by Kristian Mitra on 5/23/22.
//

import Foundation
import Alamofire

struct WeatherRequest {
    
    func getWeather(city: String) async -> WeatherResponse?  {
        
        var responseRecieved: WeatherResponse? = nil
        
        let dataTask = AF.request("https://api.openweathermap.org/data/2.5/weather",
                   method: .get,
                   parameters: ["q": city,
                                "appid": Configurations.weathermapApiKey,
                                "units": "metric"])
            .validate()
            .serializingDecodable(WeatherResponse.self)
        
        do {
            responseRecieved = try await dataTask.value
        }
        catch {
            print("Error on network call: \(error)")
        }
        
        return responseRecieved
    }
}
