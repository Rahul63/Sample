//
//  ChatTextCell.swift
//  WatsonDemo
//
//  Created by RAHUL on 4/11/17.
//  Copyright © 2017 Etay Luz. All rights reserved.
//

import UIKit

class ChatTextCell: UITableViewCell {

    @IBOutlet weak var messageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
