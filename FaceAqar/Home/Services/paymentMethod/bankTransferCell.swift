//
//  bankTransferCell.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 22/06/1442 AH.
//

import UIKit

class bankTransferCell: UITableViewCell {

    @IBOutlet weak var bankImage: UIImageView!
    @IBOutlet weak var bankView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       bankView.backgroundColor = UIColor.white
        bankView.layer.shadowColor = UIColor.lightGray.cgColor
        bankView.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        bankView.layer.shadowOpacity = 0.6
        bankView.layer.shadowRadius = 5.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
