//
//  WeatherRequest.swift
//  MithrilBase
//
//  Created by Kristian Mitra on 5/23/22.
//

import Foundation
import Alamofire

class WeatherRequest {
    
    func getWeather(city: String) -> WeatherResponse?  {
        
        var responseRecieved: WeatherResponse? = nil
        
        // https://api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}
        AF.request("https://api.openweathermap.org/data/2.5/weather",
                   method: .get,
                   parameters: ["q": city,
                                "appid": Configurations.weathermapApiKey,
                                "units": "metric"])
            .validate()
            .responseDecodable(of: WeatherResponse.self) { response in

                if let weatherResponse:WeatherResponse = response.value {
                    debugPrint(weatherResponse)
                    responseRecieved = weatherResponse
                }
            }
        
        return responseRecieved
    }
}
