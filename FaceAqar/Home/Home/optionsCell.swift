//
//  optionsCell.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 12/06/1442 AH.
//

import UIKit

class optionsCell: UITableViewCell {

    @IBOutlet weak var optionImg: UIImageView!
    @IBOutlet weak var cellView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        cellView.layer.cornerRadius = cellView.frame.size.width/2
        cellView.clipsToBounds = true

       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
