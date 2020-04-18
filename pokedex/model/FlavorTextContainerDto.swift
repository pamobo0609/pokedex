//
//  FlavorTextContainerDto.swift
//  pokedex
//
//  Created by Jose Monge on 4/17/20.
//  Copyright © 2020 Jose Monge. All rights reserved.
//

import Foundation

struct FlavorTextContainerDto: Codable {
    
    private let _flavorText: String
    var flavorText: String {
        return _flavorText
    }
    
    private let _language: PokemonArrayItemDto
    var language: PokemonArrayItemDto {
        return _language
    }
    
    enum CodingKeys: String, CodingKey {
        case _flavorText = "flavor_text"
        case _language = "language"
    }
    
}
