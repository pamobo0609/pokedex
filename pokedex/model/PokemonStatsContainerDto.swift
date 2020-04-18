//
//  PokemonStatsContainerDto.swift
//  pokedex
//
//  Created by Jose Monge on 4/17/20.
//  Copyright © 2020 Jose Monge. All rights reserved.
//

import Foundation

struct PokemonStatsContainerDto: Decodable {
    
    let _baseStat: Int
    var baseStat: Int {
        return _baseStat
    }
    
    let _effort: Int
    var effort: Int {
        return _effort
    }
    
    let _stat: PokemonArrayItemDto
    var stat: PokemonArrayItemDto {
        return _stat
    }
    
    enum CodingKeys: String, CodingKey {
        case _baseStat = "base_stat"
        case _effort = "effort"
        case _stat = "stat"
    }
    
}
