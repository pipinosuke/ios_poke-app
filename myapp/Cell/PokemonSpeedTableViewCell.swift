//
//  PokemonSpeedTableViewCell.swift
//  myapp
//
//  Created by pipinosuke on 2018/07/04.
//  Copyright © 2018年 pipinosuke. All rights reserved.
//

import UIKit

class PokemonSpeedTableViewCell: UITableViewCell {

    @IBOutlet weak var lowestLabel: UILabel!
    @IBOutlet weak var semiLowestLabel: UILabel!
    @IBOutlet weak var highestLabel: UILabel!
    @IBOutlet weak var semiHiestLabel: UILabel!
    @IBOutlet weak var normalLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.backgroundColor = .black
        lowestLabel.textColor = .white
        semiLowestLabel.textColor = .white
        highestLabel.textColor = .white
        semiHiestLabel.textColor = .white
        normalLabel.textColor = .white
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
