//
//  faceAqarCell.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 10/07/1442 AH.
//

import UIKit

class faceAqarCell: UITableViewCell {
    
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var cellImg: UIImageView!
    @IBOutlet weak var lbl: UILabel!

    @IBOutlet weak var cellOuterView: UIView!
    
    override func awakeFromNib() {
        self.cellView.layer.cornerRadius = self.cellView.frame.size.width / 2
        
        
        cellOuterView.layer.borderWidth = 1
        cellOuterView.layer.borderColor = UIColor.systemGray5.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
