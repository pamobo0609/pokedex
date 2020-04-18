//
//  DescriptionDto.swift
//  pokedex
//
//  Created by Jose Monge on 4/17/20.
//  Copyright © 2020 Jose Monge. All rights reserved.
//

import Foundation

struct DescriptionDto: Decodable {
    
    private let _happiness: Int
    var happiness: Int {
        return _happiness
    }
    
    private let _captureRate: Int
    var captureRate: Int {
        return _captureRate
    }
    
    private let _flavorTextEntries: Array<FlavorTextContainerDto>
    var flavorTextEntries: Array<FlavorTextContainerDto> {
        return _flavorTextEntries
    }
    
    enum CodingKeys: String, CodingKey {
        case _happiness = "base_happiness"
        case _captureRate = "capture_rate"
        case _flavorTextEntries = "flavor_text_entries"
    }
    
}
