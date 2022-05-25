//
//  WeatherControlling.swift
//  MithrilBase
//
//  Created by Kristian Mitra on 5/25/22.
//

import Foundation

protocol WeatherControlling {
    
    func getWeather(city: String) async -> WeatherBusinessModel
}
