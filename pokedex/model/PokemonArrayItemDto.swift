//
//  AbilityDto.swift
//  pokedex
//
//  Created by Jose Monge on 4/17/20.
//  Copyright © 2020 Jose Monge. All rights reserved.
//

import Foundation

struct PokemonArrayItemDto: Codable {
    
    let _name: String
    var name: String {
        return _name
    }
    
    let _url: String
    var url: String {
        return _url
    }
    
    enum CodingKeys: String, CodingKey {
        case _name = "name"
        case _url = "url"
    }
    
}
