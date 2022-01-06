//
//  SignInViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 07/06/1442 AH.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var signInBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        signUpBtn.layer.borderWidth = 1
        signUpBtn.layer.borderColor = UIColor(red: 0.11, green: 0.14, blue: 0.40, alpha: 1.00).cgColor

        signInBtn.layer.cornerRadius = 10
        signUpBtn.layer.cornerRadius = 10
        
    }

}
