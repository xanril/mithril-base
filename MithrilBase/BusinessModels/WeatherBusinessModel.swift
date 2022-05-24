//
//  WeatherBusinessModel.swift
//  MithrilBase
//
//  Created by Kristian Mitra on 5/23/22.
//

import Foundation

class WeatherBusinessModel {
    
    var status: String?
    var description: String?
    var temperature: Double?
    var location: String?
    var iconName: String?
    
    var statusId: Int?
    {
        didSet {
            if let safeStatusId = statusId {
                switch(safeStatusId) {
                case 200...232: iconName = "cloud.bolt.rain.fill"
                case 300...321: iconName = "cloud.drizzle.fill"
                case 500...531: iconName = "cloud.rain.fill"
                case 600...622: iconName = "cloud.sleet.fill"
                case 700...781: iconName = "cloud.fog.fill"
                case 800: iconName = "sun.max.fill"
                case 801...804: iconName = "cloud.fill"
                default: iconName = "cloud.fill"
                }
            }
        }
    }
    
}
