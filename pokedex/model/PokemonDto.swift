//
//  PokemonDto.swift
//  pokedex
//
//  Created by Jose Monge on 4/17/20.
//  Copyright © 2020 Jose Monge. All rights reserved.
//

import Foundation

struct PokemonDto: Decodable {
    
    let _abilities: Array<PokemonAbilityContainerDto>
    var abilities: Array<PokemonAbilityContainerDto> {
        return _abilities
    }
    
    let _baseExperience: Int
    var baseExperience: Int {
        return _baseExperience
    }
    
    let _forms: Array<PokemonArrayItemDto>
    var forms: Array<PokemonArrayItemDto> {
        return _forms
    }
    
    let _height: Int
    var height: Int {
        return _height
    }
    
    let _id: Int
    var id: Int {
        return _id
    }
    
    let _isDefault: Bool
    var isDefault: Bool {
        return _isDefault
    }
    
    let _locationAreaEncounters: String
    var locationAreaEncounters: String {
        return _locationAreaEncounters
    }
    
    let _moves: Array<PokemonMoveContainerDto>
    var moves: Array<PokemonMoveContainerDto> {
        return _moves
    }
    
    let _name: String
    var name: String {
        return _name
    }
    
    let _order: Int
    var order: Int {
        return _order
    }
    
    let _species: PokemonArrayItemDto
    var species: PokemonArrayItemDto {
        return _species
    }
    
    let _stats: Array<PokemonStatsContainerDto>
    var stats: Array<PokemonStatsContainerDto> {
        return _stats
    }
    
    let _types: Array<PokemonTypeContainerDto>
    var types: Array<PokemonTypeContainerDto> {
        return _types
    }

    let _weight: Int
    var weight: Int {
        return _weight
    }
    
    enum CodingKeys: String, CodingKey {
        case _abilities = "abilities"
        case _baseExperience = "base_experience"
        case _forms = "forms"
        case _height = "height"
        case _id = "id"
        case _isDefault = "is_default"
        case _locationAreaEncounters = "location_area_encounters"
        case _moves = "moves"
        case _name = "name"
        case _order = "order"
        case _species = "species"
        case _stats = "stats"
        case _types = "types"
        case _weight = "weight"
    }
    
}
