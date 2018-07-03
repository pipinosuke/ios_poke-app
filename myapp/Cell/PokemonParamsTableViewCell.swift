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
        progressView.frame.size.height = 20.0
//        progressView.frame.origin.x =  16
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setValue(params: Int) {
 //       paramLabel.text = String(params)
        //progress = Float(CGFloat(params) / 130)
        scoreLabel.text = String(params)
        let progress = Float(CGFloat(params) / 170)
        progressView.setProgress(Float(progress), animated: true)
        print(progressView.progress)
        if progressView.progress >= 0.7 {
            progressView.tintColor = UIColor.red
        } else if progressView.progress < 0.4 {
            progressView.tintColor = UIColor.yellow
        } else {
            progressView.tintColor = UIColor.blue
        }
    }

}



