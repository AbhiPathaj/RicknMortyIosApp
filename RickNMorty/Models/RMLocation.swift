//
//  RMLocation.swift
//  RickNMorty
//
//  Created by Abhishek Pathak on 14/04/25.
//

import Foundation

struct LocationModel : Codable{
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
