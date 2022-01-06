//
//  marketPaymentCell.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 13/07/1442 AH.
//

import UIKit

class marketPaymentCell: UITableViewCell {

    @IBOutlet weak var checkBox: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.checkBox.layer.cornerRadius = self.checkBox.frame.size.width / 2
        checkBox.layer.borderWidth = 1
        checkBox.layer.borderColor = UIColor(red: 0.01, green: 0.04, blue: 0.22, alpha: 1.00).cgColor
        checkBox.layer.backgroundColor = UIColor.white.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
