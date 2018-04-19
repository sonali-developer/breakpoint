//
//  GroupFeedTableViewCell.swift
//  BreakpointApp
//
//  Created by Sonali Patel on 4/19/18.
//  Copyright © 2018 Sonali Patel. All rights reserved.
//

import UIKit

class GroupFeedTableViewCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var contentLbl: UILabel!

    func configureCell(profileImage: UIImage, email: String, content: String) {
        self.profileImage.image = profileImage
        self.emailLbl.text = email
        self.contentLbl.text = content
        
    }
    
}
