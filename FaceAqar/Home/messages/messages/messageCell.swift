//
//  messageCell.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 09/07/1442 AH.
//

import UIKit

class messageCell: UITableViewCell {
    
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var profileImg: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        cellView.layer.borderWidth = 1
        cellView.layer.borderColor = UIColor.systemGray5.cgColor
        
        
        
        self.profileImg.layer.cornerRadius = self.profileImg.frame.size.width / 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
