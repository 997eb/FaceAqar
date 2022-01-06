//
//  confirmationViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 27/06/1442 AH.
//

import UIKit
import M13Checkbox

class confirmationViewController: UIViewController {
    
    @IBOutlet weak var checkbox: M13Checkbox!
    @IBOutlet weak var home: UIButton!
    @IBOutlet weak var contactUs: UIButton!
    @IBOutlet weak var confirmationLbl: UILabel!
    
  //  @IBOutlet weak var check: UIImageView!
    var timer = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        self.tabBarController?.tabBar.isHidden = true

        self.confirmationLbl.alpha = 0.0
        self.contactUs.alpha = 0.0
        self.home.alpha =  0.0

        contactUs.layer.borderWidth = 2
        contactUs.layer.borderColor = UIColor(red: 0.15, green: 0.18, blue: 0.49, alpha: 1.00).cgColor
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            
            UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseOut, animations: {
            self.confirmationLbl.alpha = 1.0
            self.contactUs.alpha = 1.0
            self.home.alpha =  1.0
            
            self.checkbox.stateChangeAnimation = .bounce(.fill)
            self.checkbox.setCheckState(.checked, animated: true)
            self.checkbox.animationDuration = 1.0
            
        })
     
        }
        
  

    }
 
    @IBAction func contactUs(_ sender: Any) {
        
        
    }


}
