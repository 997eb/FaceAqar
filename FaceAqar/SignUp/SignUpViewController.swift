//
//  SignUpViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 07/06/1442 AH.
//

import UIKit

class SignUpViewController: UIViewController {

   @IBOutlet weak var termsCheckBox: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpBorder()
       
    }
    
   func setUpBorder(){
        
        termsCheckBox.layer.borderWidth = 0.5
        termsCheckBox.layer.borderColor = UIColor.gray.cgColor
        
    }
    
    
    @IBAction func termsBtn(_ sender: Any) {
        
        termsCheckBox.setImage(UIImage(named:"checked2.png"), for: .normal)
        termsCheckBox.backgroundColor =  UIColor(red: 0.11, green: 0.14, blue: 0.40, alpha: 1.00)


    }


}
