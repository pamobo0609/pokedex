//
//  PokemonTypeContainer.swift
//  pokedex
//
//  Created by Jose Monge on 4/17/20.
//  Copyright © 2020 Jose Monge. All rights reserved.
//

import Foundation

struct PokemonTypeContainerDto: Decodable {
    
    let _slot: Int
    var slot: Int {
        return _slot
    }
    
    let _type: PokemonArrayItemDto
    var type: PokemonArrayItemDto {
        return _type
    }
    
    enum CodingKeys: String, CodingKey {
        case _slot = "slot"
        case _type = "type"
    }
    
}
