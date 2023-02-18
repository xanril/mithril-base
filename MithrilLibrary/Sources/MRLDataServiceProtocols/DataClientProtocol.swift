//
//  File.swift
//  
//
//  Created by Kristian Mitra on 2/18/23.
//

import Foundation

public protocol DataClientProtocol {
    
    func get<T:Codable>(uri: String, parameters: Dictionary<String, String>) async throws -> T?
}
