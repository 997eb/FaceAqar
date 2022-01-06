//
//  allAdsCell.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 12/07/1442 AH.
//

import UIKit

class allAdsCell: UITableViewCell {
    @IBOutlet weak var cellView: UIView!
    
    @IBOutlet weak var propertyName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
       
        
        cellView.backgroundColor = UIColor.white
        cellView.layer.shadowColor = UIColor.lightGray.cgColor
        cellView.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        cellView.layer.shadowOpacity = 0.6
        cellView.layer.shadowRadius = 5.0
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
