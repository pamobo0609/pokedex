//
//  PokemonAbilityDto.swift
//  pokedex
//
//  Created by Jose Monge on 4/17/20.
//  Copyright © 2020 Jose Monge. All rights reserved.
//

import Foundation

struct PokemonAbilityContainerDto: Decodable {
    
    let _abilities = Array<PokemonArrayItemDto>()
    var abilities: Array<PokemonArrayItemDto> {
        return _abilities
    }
    
    let _isHidden: Bool
    var isHidden: Bool {
        return _isHidden
    }
    
    let _slot: Int
    var slot: Int {
        return _slot
    }
    
    enum CodingKeys: String, CodingKey {
        case _abilities = "abilities"
        case _isHidden = "is_hidden"
        case _slot = "slot"
    }
    
}
