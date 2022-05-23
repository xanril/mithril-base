//
//  WeatherPageViewModel.swift
//  MithrilBase
//
//  Created by Kristian Mitra on 5/23/22.
//

import Foundation

public class WeatherPageViewModel : ObservableObject {
    
    let weatherController:WeatherController = WeatherController()
    
    @Published var searchText: String = ""
    @Published var location: String = ""
    @Published var iconName: String = ""
    @Published var temperature: String = ""
    
    init() {
        location = "..."
        iconName = "cloud.sun.rain.fill"
    }
    
    public func getWeather() {
        let weather = weatherController.getWeather(city: "Manila")
        location = weather.location ?? ""
        temperature = String(format: "%.1", weather.temperature ?? 0.0)
    }
}
