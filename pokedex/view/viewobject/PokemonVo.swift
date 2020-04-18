//
//  Pokemon.swift
//  pokedex
//
//  Created by Jose Monge on 4/16/20.
//  Copyright © 2020 Jose Monge. All rights reserved.
//

import Foundation
import Alamofire

class PokemonVo {
    
    static let builder = Builder()
    
    private var _name: String!
    private var _pokedexId: Int!
    private var _description: String!
    private var _type: String!
    private var _defense: String!
    private var _height: String!
    private var _weight: String!
    private var _attack: String!
    private var _nextEvolutionTxt: String!
    
    private var _pokemonURL: String!
    private var _pokemonDescriptionURL: String!
    private var _pokemonEvolutionsURL: String!
    
    private init(aName: String, anId: Int, aDesc: String, aType: String, aDef: String, aHeight: String, aWeight: String, anAttack: String,
                 nextEvo: String) {
        self._name = aName
        self._pokedexId = anId
        self._description = aDesc
        self._type = aType
        self._defense = aDef
        self._height = aHeight
        self._weight = aWeight
        self._attack = anAttack
        self._nextEvolutionTxt = nextEvo
        
        self._pokemonURL = "\(URL_BASE)\(URL_POKEMON)\(self.pokedexId)/"
        self._pokemonDescriptionURL = "\(URL_BASE)\(URL_DESCRIPTIONS)\(self.pokedexId)"
        self._pokemonEvolutionsURL = "\(URL_BASE)\(URL_EVOLUTIONS)\(self.pokedexId)"
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
        if nil == _nextEvolutionTxt {
            _nextEvolutionTxt = ""
        }
        return _nextEvolutionTxt
    }
    
    func downloadPokemonDetail(completed: @escaping DownloadComplete) {
        AF.request(_pokemonURL).responseDecodable(of: PokemonDto.self) { (response) in
            guard let downloadedData = response.value else { return }
            self.handleDownloadedData(theData: downloadedData)
            completed()
        }
    }
    
    func downloadPokemonDescription(completed: @escaping DownloadComplete) {
        AF.request(_pokemonDescriptionURL).responseDecodable(of: DescriptionDto.self) { (response) in
            guard let downloadedData = response.value else { return }
            self.handleDownloadedDescriptions(theData: downloadedData)
            completed()
        }
    }
    
    func downloadPokemonEvolutions(completed: @escaping DownloadComplete) {
        AF.request(_pokemonEvolutionsURL).responseDecodable(of: EvolutionChainDto.self) { (response) in
            
        }
    }
    
    func handleDownloadedData(theData: PokemonDto) {
        let aVo: PokemonVo = PokemonVoMapper.instance.fromDto(aDto: theData)
        self._description = aVo.description
        self._type = aVo.type
        self._defense = aVo.defense
        self._height = aVo.height
        self._weight = aVo.weight
        self._attack = aVo.attack
        self._nextEvolutionTxt = aVo.nextEvolutionTxt
    }
    
    func handleDownloadedDescriptions(theData: DescriptionDto) {
        for textEntry in theData.flavorTextEntries {
            if "en" == textEntry.language.name {
                self._description = textEntry.flavorText
                break
            }
        }
    }
    
    class Builder {
        
        private var name: String = ""
        private var pokedexId: Int = -1
        private var description: String = ""
        private var type: String = ""
        private var defense: String = ""
        private var height: String = ""
        private var weight: String = ""
        private var attack: String = ""
        private var nextEvolutionTxt: String = ""
        
        fileprivate init() {}
        
        func name(aName: String?) -> Builder {
            if nil != aName {
                self.name = aName!
            }
            return self
        }
        
        func pokedexId(anId: Int?) -> Builder {
            if nil != anId {
                self.pokedexId = anId!
            }
            return self
        }
        
        func description(aDesc: String?) -> Builder {
            if nil != aDesc {
                self.description = aDesc!
            }
            return self
        }
        
        func type(aType: String?) -> Builder {
            if nil != aType {
                self.type = aType!
            }
            return self
        }
        
        func defense(aDef: String?) -> Builder {
            if nil != aDef {
                self.defense = aDef!
            }
            return self
        }
        
        func height(aHeight: String?) -> Builder {
            if nil != aHeight {
                self.height = aHeight!
            }
            return self
        }
        
        func weight(aWeight: String?) -> Builder {
            if nil != aWeight {
                self.weight = aWeight!
            }
            return self
        }
        
        func attack(anAttack: String?) -> Builder {
            if nil != anAttack {
                self.attack = anAttack!
            }
            return self
        }
        
        func nextEvolutionTxt(nextEvo: String?) -> Builder {
            if nil != nextEvo {
                self.nextEvolutionTxt = nextEvo!
            }
            return self
        }
        
        func build() -> PokemonVo {
            return PokemonVo(aName: name, anId: pokedexId, aDesc: description, aType: type, aDef: defense, aHeight: height, aWeight: weight, anAttack: attack, nextEvo: nextEvolutionTxt)
        }
        
    }
    
}
