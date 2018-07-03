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
    //    var progress: Float = 0
    
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
 //       paramLabel.text = String(params)
        //progress = Float(CGFloat(params) / 130)
        scoreLabel.text = String(params)
        let progress = Float(CGFloat(params) / 130)
        
        //progressView.progressTintColor = UIColor(red: CGFloat(progress), green: 0, blue: 0.6,alpha: 1)
        progressView.progressTintColor = .blue
        progressView.setProgress(Float(progress), animated: true)
    }
}



