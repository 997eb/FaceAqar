//
//  textCell.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 02/07/1442 AH.
//

import UIKit

class textCell: UITableViewCell {
    
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var title: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
