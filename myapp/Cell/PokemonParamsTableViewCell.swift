//
//  PokemonParamsTableViewCell.swift
//  myapp
//
//  Created by pipinosuke on 2018/06/30.
//  Copyright © 2018年 pipinosuke. All rights reserved.
//

import UIKit

class PokemonParamsTableViewCell: UITableViewCell {

    @IBOutlet weak var progressView: UIProgressView!
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var paramLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        progressView.progressViewStyle = UIProgressViewStyle.bar
        scoreLabel.textColor = .white
        paramLabel.textColor = .white
        self.backgroundColor = .black
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setValue(params: Int) {
        scoreLabel.text = String(params)
        let progress = Float(CGFloat(params) / 130)
        
        progressView.progressTintColor = .blue
        progressView.setProgress(Float(progress), animated: true)
    }
}



