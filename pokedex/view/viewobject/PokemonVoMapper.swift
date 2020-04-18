//
//  PokemonVoMapper.swift
//  pokedex
//
//  Created by Jose Monge on 4/17/20.
//  Copyright © 2020 Jose Monge. All rights reserved.
//

import Foundation

class PokemonVoMapper {
    
    /* dto
     let abilities: Array<PokemonAbilityContainerDto>
     let baseExperience: Int?
     let forms: Array<PokemonArrayItemDto>
     let id: Int?
     let isDefault: Bool?
     let locationAreaEncounters: String?
     let moves: Array<PokemonMoveContainerDto>
     let name: String?
     let order: Int?
     let species: PokemonArrayItemDto?
     let stats: Array<PokemonStatsContainerDto>
     */
    
    static let instance = PokemonVoMapper()
    
    init() {}
    
    func fromDto(aDto: PokemonDto) -> PokemonVo {
        var theType = ""
        for aType in aDto.types {
            theType.append("\(aType.type.name.capitalized)/")
        }
        
        return PokemonVo.builder
            .type(aType: String(theType.dropLast(1)))
            .defense(aDef: "")
            .height(aHeight:"\(aDto.height)")
            .weight(aWeight: "\(aDto.weight)")
            .attack(anAttack: "")
            .nextEvolutionTxt(nextEvo: "")
            .build()
    }
    
}
