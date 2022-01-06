//
//  OTPchangeMobileViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 01/08/1442 AH.
//

import UIKit

class OTPchangeMobileViewController: UIViewController {

    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var firstTF: UITextField!
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var fourthTF: UITextField!
    @IBOutlet weak var fourthView: UIView!
    @IBOutlet weak var thirdTF: UITextField!
    @IBOutlet weak var secoundView: UIView!
    @IBOutlet weak var secoundTF: UITextField!
    @IBOutlet weak var phoneNum: UITextField!
    
    @IBOutlet weak var confirmationView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        SetuptextField()
        confirmationView.alpha = 0.0
  /*
  navigationController?.isNavigationBarHidden = true
           navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
              navigationController?.navigationBar.shadowImage = UIImage()
           UINavigationBar.appearance().isTranslucent = true
*/
        
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "", style: .plain, target: nil, action: nil)
    }

    func setUpView(){
        
        firstView.layer.cornerRadius = 7
        secoundView.layer.cornerRadius = 7
        thirdView.layer.cornerRadius = 7
        fourthView.layer.cornerRadius = 7
        
        firstView.layer.borderWidth = 0.6
        firstView.layer.borderColor = UIColor(red: 0.15, green: 0.18, blue: 0.49, alpha: 1.00).cgColor
        
        secoundView.layer.borderWidth = 0.6
        secoundView.layer.borderColor = UIColor(red: 0.15, green: 0.18, blue: 0.49, alpha: 1.00).cgColor

        thirdView.layer.borderWidth = 0.6
        thirdView.layer.borderColor = UIColor(red: 0.15, green: 0.18, blue: 0.49, alpha: 1.00).cgColor
        
        fourthView.layer.borderWidth = 0.6
        fourthView.layer.borderColor = UIColor(red: 0.15, green: 0.18, blue: 0.49, alpha: 1.00).cgColor


    }
    
    func SetuptextField(){

        
        let bottomLine5 = CALayer()
        bottomLine5.frame = CGRect(x: 0.0, y: phoneNum.frame.height - 1, width: phoneNum.frame.width, height: 1.0)
        bottomLine5.backgroundColor = UIColor.clear.cgColor
        phoneNum.borderStyle = UITextField.BorderStyle.none
        phoneNum.layer.addSublayer(bottomLine5)
        
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: firstTF.frame.height - 1, width: firstTF.frame.width, height: 1.0)
        bottomLine.backgroundColor = UIColor.clear.cgColor
        firstTF.borderStyle = UITextField.BorderStyle.none
        firstTF.layer.addSublayer(bottomLine)
        
        let bottomLine2 = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: secoundTF.frame.height - 1, width: secoundTF.frame.width, height: 1.0)
        bottomLine.backgroundColor = UIColor.clear.cgColor
        secoundTF.borderStyle = UITextField.BorderStyle.none
        secoundTF.layer.addSublayer(bottomLine2)
        
        let bottomLine3 = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: thirdTF.frame.height - 1, width: thirdTF.frame.width, height: 1.0)
        bottomLine.backgroundColor = UIColor.clear.cgColor
        thirdTF.borderStyle = UITextField.BorderStyle.none
        thirdTF.layer.addSublayer(bottomLine3)
        
        let bottomLine4 = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: fourthTF.frame.height - 1, width: fourthTF.frame.width, height: 1.0)
        bottomLine.backgroundColor = UIColor.clear.cgColor
        fourthTF.borderStyle = UITextField.BorderStyle.none
        fourthTF.layer.addSublayer(bottomLine4)
    }

    @IBAction func verify(_ sender: Any) {

        confirmationView.alpha = 1.0
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            
            self.confirmationView.alpha = 0.0

            
        }
    }
}
