//
//  PokemonMoveContainerDto.swift
//  pokedex
//
//  Created by Jose Monge on 4/17/20.
//  Copyright © 2020 Jose Monge. All rights reserved.
//

import Foundation

struct PokemonMoveContainerDto: Decodable {
    
    let _move: PokemonArrayItemDto
    var move: PokemonArrayItemDto {
        return _move
    }
    
    enum CodingKeys: String, CodingKey {
        case _move = "move"
    }
    
}
