//
//  WeatherBusinessModel.swift
//  MithrilBase
//
//  Created by Kristian Mitra on 5/23/22.
//

import Foundation

public struct WeatherBusinessModel {
    
    public var status: String?
    public var description: String?
    public var temperature: Double?
    public var location: String?
    public var iconName: String?
    
    public var statusId: Int?
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
    
    public init() {
        
    }
    
}
