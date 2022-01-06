//
//  detailsCell.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 18/06/1442 AH.
//

import UIKit

class detailsCell: UITableViewCell {

    @IBOutlet weak var check: UIView!
    @IBOutlet weak var details: UILabel!
    @IBOutlet weak var detailsLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
