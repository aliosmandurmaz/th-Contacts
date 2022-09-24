//
//  contactCell.swift
//  Contacts
//
//  Created by Ali Osman DURMAZ on 01.09.2022.
//  Copyright © 2022 Ali Osman DURMAZ. All rights reserved.
//

import UIKit

class contactCell: UITableViewCell {

    @IBOutlet weak var imgProfile: UIImageView!
    
    @IBOutlet weak var lblCity: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imgFavorite: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
