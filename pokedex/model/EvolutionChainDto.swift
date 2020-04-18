//
//  EvolutionChainDto.swift
//  pokedex
//
//  Created by Jose Monge on 4/17/20.
//  Copyright © 2020 Jose Monge. All rights reserved.
//

import Foundation

struct EvolutionChainDto: Codable {
    
    private let _id: Int
    var id: Int {
        return _id
    }
    
    private let _chain: ChainDto
    var chain: ChainDto {
        return _chain
    }
    
    private let _evolvesTo: Array<EvolveDto>
    var evolvesTo: Array<EvolveDto> {
        return _evolvesTo
    }
    
    enum CodingKeys: String, CodingKey {
        case _id = "id"
        case _chain = "chain"
        case _evolvesTo = "evolves_to"
    }
    
}
