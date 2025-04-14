//
//  RMCharacter.swift
//  RickNMorty
//
//  Created by Abhishek Pathak on 14/04/25.
//

import Foundation

struct CharacterModel : Codable {
    let id: Int
    let name: String
    let status: RMStatus
    let species: String
    let type: String
    let gender: RMGender
    let origin: RMOrigin
    let location: RMOrigin
    let image: String
    let episode: [String]
    let url: String
    let created: String
    
}

struct RMOrigin: Codable {
    let name: String
    let url: String
}
enum RMGender: String, Codable {
    case male = "Male"
    case female = "Female"
    case `unknown` = "Unknown"
    case genderless = "Genderless"
}
@frozen public enum RMStatus:  String, Codable{
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "Unknown"
}
