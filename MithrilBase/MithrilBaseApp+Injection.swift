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
import Resolver

extension Resolver: ResolverRegistering {
    
    public static func registerAllServices() {
        defaultScope = .graph
        
        register { WeatherDataService() as WeatherDataServicing }
        register { WeatherController() as WeatherControlling }
    }
}
