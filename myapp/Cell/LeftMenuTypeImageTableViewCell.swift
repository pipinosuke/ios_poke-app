//
//  LeftMenuTypeImageTableViewCell.swift
//  myapp
//
//  Created by pipinosuke on 2018/07/05.
//  Copyright © 2018年 pipinosuke. All rights reserved.
//

import UIKit

class LeftMenuTypeImageTableViewCell: UITableViewCell {

    @IBOutlet weak var typeImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        typeImageView.frame.size.width = self.frame.size.width
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
