//
//  RMEpisode.swift
//  RickNMorty
//
//  Created by Abhishek Pathak on 14/04/25.
//

import Foundation

struct EpisodeModel : Codable {
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}

