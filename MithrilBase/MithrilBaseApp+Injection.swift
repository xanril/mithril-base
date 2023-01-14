//
//  MithrilBaseApp+Injection.swift
//  MithrilBase
//
//  Created by Kristian Mitra on 5/25/22.
//

import Foundation
import ControllerProtocols
import Controllers
import DataServiceProtocols
import DataServices
import Factory

extension Container {
    static let weatherDataService = Factory<WeatherDataServicing> { WeatherDataService() }
    static let weatherContoller = Factory<WeatherControlling>{ WeatherController(weatherDataService: Container.weatherDataService.callAsFunction()) }
}
