//
//  MyCellTableViewCell.swift
//  ContactList
//
//  Created by Дмитрий Чепанов on 28.12.2021.
//

import UIKit

class MyCellTableViewCell: UITableViewCell {

    @IBOutlet weak var txtLabel: UILabel!
    @IBOutlet weak var imageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
