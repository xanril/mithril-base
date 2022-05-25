//
//  WeatherDataServicing.swift
//  MithrilBase
//
//  Created by Kristian Mitra on 5/25/22.
//

import Foundation
import BusinessModels

protocol WeatherDataServicing {
    
    func getWeather(city: String) async -> WeatherBusinessModel
}
