//
//  mobileConfirmationViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 01/08/1442 AH.
//

import UIKit
import M13Checkbox

class mobileConfirmationViewController: UIViewController {


    @IBOutlet weak var dismiss: UIButton!
    @IBOutlet weak var checkbox: M13Checkbox!
    @IBOutlet weak var confirmationLbl: UILabel!
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        self.tabBarController?.tabBar.isHidden = true

        self.confirmationLbl.alpha = 0.0
        self.dismiss.alpha = 0.0

        dismiss.layer.cornerRadius = dismiss.frame.size.width/2

      
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            
            UIView.animate(withDuration: 0.5, delay: 0.5, options: .curveEaseOut, animations: {
            self.confirmationLbl.alpha = 1.0
            self.dismiss.alpha = 1.0

            
            self.checkbox.stateChangeAnimation = .bounce(.fill)
            self.checkbox.setCheckState(.checked, animated: true)
            self.checkbox.animationDuration = 1.0
            
        })
     
         
        }
        
        

    }
 
    @IBAction func dismissVC(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
}
}
