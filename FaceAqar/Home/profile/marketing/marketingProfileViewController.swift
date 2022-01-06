//
//  marketingProfileViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 12/07/1442 AH.
//

import UIKit

class marketingProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
        
        profileImg.layer.cornerRadius = profileImg.frame.size.width/2
        profileImg.layer.borderColor = UIColor(red: 0.01, green: 0.04, blue: 0.22, alpha: 1.00).cgColor
        profileImg.layer.borderWidth = 3
        
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "", style: .plain, target: nil, action: nil)

    }
    
    @IBOutlet weak var profileImg: UIImageView!
    


}
