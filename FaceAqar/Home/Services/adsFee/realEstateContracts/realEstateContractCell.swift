//
//  realEstateContractCell.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 21/06/1442 AH.
//

import UIKit

class realEstateContractCell: UITableViewCell {

    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var title: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
   
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
