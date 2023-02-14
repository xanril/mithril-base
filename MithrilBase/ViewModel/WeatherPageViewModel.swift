//
//  WeatherPageViewModel.swift
//  MithrilBase
//
//  Created by Kristian Mitra on 5/23/22.
//

import Foundation
import MRLControllerProtocols
import Factory

public class WeatherPageViewModel : ObservableObject{
    
    @Injected(Container.weatherContoller) private var weatherController:WeatherControlling
    
    @Published var searchText: String = ""
    @Published var location: String = ""
    @Published var iconName: String = ""
    @Published var temperature: String = ""
    
    init() {
        location = "Initial Location"
        iconName = "cloud.sun.rain.fill"
        temperature = "25 C°"
    }
    
    @MainActor
    public func getWeather() async {
        let weather = await weatherController.getWeather(city: searchText, apiKey: Configurations.weathermapApiKey)
        location = weather.location ?? ""
        temperature = String(format: "%.1f C°", weather.temperature ?? 0.0)
        iconName = weather.iconName ?? "cloud.fill"
    }
}
