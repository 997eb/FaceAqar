//
//  unPaidAdsCell.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 12/07/1442 AH.
//

import UIKit

class unPaidAdsCell: UITableViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        unPaidView.layer.cornerRadius = 5
        
        brokerView.backgroundColor = UIColor.white
        brokerView.layer.shadowColor = UIColor.lightGray.cgColor
        brokerView.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        brokerView.layer.shadowOpacity = 0.6
        brokerView.layer.shadowRadius = 5.0
  
        
        adsView.backgroundColor = UIColor.white
        adsView.layer.shadowColor = UIColor.lightGray.cgColor
        adsView.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        adsView.layer.shadowOpacity = 0.6
        adsView.layer.shadowRadius = 5.0
    }
    @IBOutlet weak var unPaidView: UIView!
    
    @IBOutlet weak var brokerView: UIView!
    @IBOutlet weak var adsView: UIView!
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
