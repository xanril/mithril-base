//
//  WeatherPageViewModel.swift
//  MithrilBase
//
//  Created by Kristian Mitra on 5/23/22.
//

import Foundation

@MainActor public class WeatherPageViewModel : ObservableObject {
    
    let weatherController:WeatherController = WeatherController()
    
    @Published var searchText: String = ""
    @Published var location: String = ""
    @Published var iconName: String = ""
    @Published var temperature: String = ""
    
    init() {
        location = "Initial Location"
        iconName = "cloud.sun.rain.fill"
        temperature = "25 C°"
    }
    
    public func getWeather() async {
        let weather = await weatherController.getWeather(city: "Manila")
        location = weather.location ?? ""
        temperature = String(format: "%.1f C°", weather.temperature ?? 0.0)
    }
}
