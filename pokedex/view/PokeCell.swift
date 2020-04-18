//
//  PokeCellCollectionViewCell.swift
//  pokedex
//
//  Created by Jose Monge on 4/16/20.
//  Copyright © 2020 Jose Monge. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon: PokemonVo!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.cornerRadius = 5.0
    }
    
    func configureCell(pokemon: PokemonVo) {
        self.pokemon = pokemon
        
        self.nameLbl.text = self.pokemon.name.capitalized
        self.thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
        
    }
    
    
    
}
