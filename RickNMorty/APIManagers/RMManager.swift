//
//  RMManager.swift
//  RickNMorty
//
//  Created by Abhishek Pathak on 14/04/25.
//

import Foundation
/// Primary API service to get Rick and Morty API Data

final class RMManager {
    /// shared singelton Instance
    static let shared = RMManager()
    
    /// Privatized Constructor
    private init() {}
    
    /// Send RicK and Morty API call
    /// - Parameters:
    ///   - request: Request for the API call
    ///   - completion: completion that will inform us of the API response status and data
    private func execute(_ request : RMRequest, completion: @escaping ()->Void){
        
    }
}
