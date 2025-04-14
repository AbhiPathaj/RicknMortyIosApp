//
//  File.swift
//  RickNMorty
//
//  Created by Abhishek Pathak on 14/04/25.
//

import Foundation
final class RMRequest {
    
    private struct Constants{
        static let baseURLString = "https://rickandmortyapi.com/api"
    }
    
    private var endpoint : Endpoints
    private var paths : [String]
    private var queryParams : [URLQueryItem]
    
    init(endpoint: Endpoints, paths: [String], queryParams: [URLQueryItem]) {
        self.endpoint = endpoint
        self.paths = paths
        self.queryParams = queryParams
    }
    
    private var finalUrlString : String {
        var urlString = Constants.baseURLString
        urlString += "/"
        urlString += endpoint.rawValue
        if(!paths.isEmpty){
            for path in paths {
                urlString += "/\(path)"
            }
        }
        if(!queryParams.isEmpty){
            urlString += "?"
            let argumentedString = queryParams.compactMap ({
                guard let value = $0.value else { return nil }
               return "\($0.name)=\(value)"
            }).joined(separator: "&")
            urlString += argumentedString
        }
        return urlString
    }
    
    private var url: URL?{
        return URL(string: finalUrlString)
    }
    public func requestBuilder(with url:URL?)->URLRequest {
        guard let url = self.url else {
            return URLRequest(url: URL(string: "")!)
        }
        return URLRequest(url: url)
    }
}

