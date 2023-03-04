//
//  MithrilBaseApp+Injection.swift
//  MithrilBase
//
//  Created by Kristian Mitra on 5/25/22.
//

import Foundation
import MRLControllers
import MRLControllerProtocols
import MRLDataServices
import MRLDataServiceProtocols
import Factory

extension Container {
    
    var dataClient: Factory<DataClientProtocol> {
            Factory(self) { DataClient() }
        }
    
    var weatherDataService: Factory<WeatherDataServicing> {
        Factory(self) { WeatherDataService(dataClient: self.dataClient()) }
    }
    
    var weatherContoller: Factory<WeatherControlling> {
        Factory(self) { WeatherController(weatherDataService: self.weatherDataService()) }
    }
}
