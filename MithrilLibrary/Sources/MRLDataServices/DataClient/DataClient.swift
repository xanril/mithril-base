//
//  File.swift
//  
//
//  Created by Kristian Mitra on 2/18/23.
//

import Foundation
import MRLDataServiceProtocols
import Alamofire

public struct DataClient : DataClientProtocol {
    
    public init() {
        
    }
    
    public func get<T:Codable>(uri: String, parameters: Dictionary<String, String>) async throws -> T? {
        
        var response: T? = nil
        let dataTask = AF.request(uri,
                   method: .get,
                   parameters: parameters)
            .validate()
            .serializingDecodable(T.self)
        
        response = try await dataTask.value
        return response
    }
}
