//
//  PokemonBasicDataTableViewCell.swift
//  myapp
//
//  Created by pipinosuke on 2018/06/30.
//  Copyright © 2018年 pipinosuke. All rights reserved.
//

import UIKit

class PokemonBasicDataTableViewCell: UITableViewCell {

    private let typeNums = [
        "ノーマル": "0",
        "かくとう": "1",
        "ひこう": "2",
        "どく": "3",
        "じめん": "4",
        "いわ": "5",
        "むし": "6",
        "ゴースト": "7",
        "はがね": "8",
        "ほのお": "9",
        "みず": "10",
        "くさ": "11",
        "でんき": "12",
        "エスパー": "13",
        "こおり": "14",
        "ドラゴン": "15",
        "あく": "16",
        "フェアリー": "17"
    ]
    
    
    @IBOutlet weak var pokeImageView: UIImageView!
    @IBOutlet weak var type2ImageVIew: UIImageView!
    @IBOutlet weak var type1ImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        nameLabel.adjustsFontSizeToFitWidth = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setParams(number: Int){
        pokeImageView.image = UIImage(named: String(number))
    }
    
    func setPokemon(pokemon: Pokemon) {
        pokeImageView.image = UIImage(named: String(pokemon.id))
        nameLabel.text = pokemon.name
        
        if let type1ImageName = typeNums[pokemon.type1]  {
            type1ImageView.image = UIImage(named: "type" + type1ImageName)
        }
        if let  type2ImageName = typeNums[pokemon.type2] {
            type2ImageVIew.image = UIImage(named: "type" + type2ImageName)
        } else {
            type2ImageVIew.isHidden = true
            return
        }
        
    }
}
