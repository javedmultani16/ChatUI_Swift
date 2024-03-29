//
//  ReceiverTableViewCell.swift
//  Chat
//
//  Created by Javed Multani on 02/09/2019.
//  Copyright © 2019 Javed Multani. All rights reserved.
//

import UIKit

class ReceiverTableViewCell: UITableViewCell {
    @IBOutlet weak var viewContent: UIView!
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        viewContent.layer.cornerRadius = 9.0
        viewContent.clipsToBounds = true
        
        profileImage.layer.cornerRadius = profileImage.frame.height / 2.0
        profileImage.clipsToBounds = true
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
