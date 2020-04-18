//
//  Constants.swift
//  pokedex
//
//  Created by Jose Monge on 4/17/20.
//  Copyright © 2020 Jose Monge. All rights reserved.
//

import Foundation

let URL_BASE = "https://pokeapi.co"
let API_VERSION = "/v2/"
let URL_POKEMON = "/api/\(API_VERSION)/pokemon/"

let URL_DESCRIPTIONS = "/api\(API_VERSION)pokemon-species/"
let URL_EVOLUTIONS = "/api\(API_VERSION)evolution-chain/"

typealias DownloadComplete = () -> ()
typealias Codable = Decodable & Encodable
