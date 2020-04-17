//
//  Pokemon.swift
//  pokedex
//
//  Created by Jose Monge on 4/16/20.
//  Copyright © 2020 Jose Monge. All rights reserved.
//

import Foundation

class Pokemon {
    
    private var _name: String!
    private var _pokedexId: Int!
    private var _description: String!
    private var _type: String!
    private var _defense: String!
    private var _height: String!
    private var _weight: String!
    private var _attack: String!
    private var _nextEvolutionTxt: String!
    
    init(aName: String, anId: Int) {
        self._name = aName
        self._pokedexId = anId
    }
    
    var name: String {
        if nil == _name {
            _name = ""
        }
        return _name
    }
    
    var pokedexId: Int {
        return _pokedexId
    }
    
    var description: String {
        if nil == _description {
            _description = ""
        }
        return _description
    }
    
    var type: String {
        if nil == _type {
            _type = ""
        }
        return _type
    }
    
    var defense: String {
        if nil == _defense {
            _defense = ""
        }
        return _defense
    }
    
    var height: String {
        if nil == _height {
            _height = ""
        }
        return _height
    }
    
    var weight: String {
        if nil == _weight {
            _weight = ""
        }
        return _weight
    }
    
    var attack: String {
        if nil == _attack {
            _attack = ""
        }
        return _attack
    }
    
    var nextEvolutionTxt: String {
//        if nil == _nextEvolutionTxt {
            _nextEvolutionTxt = ""
        }
        return _nextEvolutionTxt
    }
    
}
