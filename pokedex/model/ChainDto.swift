//
//  ChainDto.swift
//  pokedex
//
//  Created by Jose Monge on 4/17/20.
//  Copyright © 2020 Jose Monge. All rights reserved.
//

import Foundation

struct ChainDto: Codable {
    
    private let _isBaby: Bool
    var isBaby: Bool {
        return _isBaby
    }
    
    
    
    enum CodingKeys: String, CodingKey {
        case _isBaby = "is_baby"
    }
    
}
