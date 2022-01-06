//
//  favorateCell.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 13/06/1442 AH.
//

import UIKit

class favorateCell: UITableViewCell {

    @IBOutlet weak var favorateView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        favorateView.layer.cornerRadius = 5
        /*favorateView.layer.shadowPath = UIBezierPath(rect: favorateView.bounds).cgPath
        favorateView.layer.shadowRadius = 8
        favorateView.layer.shadowColor = UIColor.lightGray.cgColor
        favorateView.layer.shadowOffset = .zero
        favorateView.layer.shadowOpacity = 5*/
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
