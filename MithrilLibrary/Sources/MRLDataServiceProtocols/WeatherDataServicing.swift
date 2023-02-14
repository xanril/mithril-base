//
//  WeatherDataServicing.swift
//  MithrilBase
//
//  Created by Kristian Mitra on 5/25/22.
//

import Foundation
import MRLBusinessModels

public protocol WeatherDataServicing {
    
    func getWeather(city: String, apiKey: String) async throws -> WeatherBusinessModel
}
