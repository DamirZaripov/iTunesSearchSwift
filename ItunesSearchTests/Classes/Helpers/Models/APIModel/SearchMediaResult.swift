//
//  SearchMediaResult.swift
//  ItunesSearchTests
//
//  Created by Damir Zaripov on 09.04.2018.
//  Copyright © 2018 iOSLab. All rights reserved.
//

import Foundation

struct SearchMediaResult: Codable {
    
    let results: [SearchMediaResultRaw]
    
    struct SearchMediaResultRaw: Codable {
        
        let trackName: String
        let artistName: String
        let shortDescription: String?
        let trackPrice: Double?
        let artworkUrl60: URL
        let trackViewUrl: URL
        let supportedDevices: [String]?
        
        init(from decoder: Decoder) throws {
            
            let values = try decoder.container(keyedBy: CodingKeys.self)
            self.artistName = try values.decode(String.self, forKey: .artistName)
            
            if let trackName = try values.decodeIfPresent(String.self, forKey: .trackName) {
                self.trackName = trackName
            } else {
                self.trackName = try values.decode(String.self, forKey: .collectionName)
            }
    
            if let shortDescription = try values.decodeIfPresent(String.self, forKey: .shortDescription) {
                self.shortDescription = shortDescription
            } else {
                self.shortDescription = try values.decodeIfPresent(String.self, forKey: .description)
            }
            
            if let trackPrice = try values.decodeIfPresent(Double.self, forKey: .trackPrice) {
                self.trackPrice = trackPrice
            } else if let price = try values.decodeIfPresent(Double.self, forKey: .price) {
                self.trackPrice = price
            } else {
                self.trackPrice = try values.decodeIfPresent(Double.self, forKey: .collectionPrice)
            }
            
            if let trackViewUrl = try values.decodeIfPresent(URL.self, forKey: .trackViewUrl) {
                self.trackViewUrl = trackViewUrl
            } else {
                self.trackViewUrl = try values.decode(URL.self, forKey: .collectionViewUrl)
            }
            
            self.artworkUrl60 = try values.decode(URL.self, forKey: .artworkUrl60)
            
            self.supportedDevices = try values.decodeIfPresent([String].self, forKey: .supportedDevices)
        }
        
        func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(trackName, forKey: .trackName)
            try container.encode(artistName, forKey: .artistName)
            try container.encode(shortDescription, forKey: .shortDescription)
            try container.encode(trackPrice, forKey: .trackPrice)
            try container.encode(artworkUrl60, forKey: .artworkUrl60)
        }
        
        enum CodingKeys: String, CodingKey {
            case trackName
            case collectionName
            case artistName
            case shortDescription
            case description
            case trackPrice
            case price
            case collectionPrice
            case artworkUrl60
            case trackViewUrl
            case collectionViewUrl
            case supportedDevices
        }
    }
    
}
