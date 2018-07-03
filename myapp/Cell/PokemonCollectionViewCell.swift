//
//  PokemonCollectionViewCell.swift
//  myapp
//
//  Created by pipinosuke on 2018/06/29.
//  Copyright © 2018年 pipinosuke. All rights reserved.
//

import UIKit
class PokemonCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var pokeImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    func bindData(number: Int) {
        pokeImageView.image = UIImage(named: String(number))
    }
}
