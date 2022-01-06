//
//  addViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 11/06/1442 AH.
//

import UIKit

class addViewController: UIViewController {

    @IBOutlet weak var propertyView: UIView!
    @IBOutlet weak var propertyImgView: UIView!
    
    @IBOutlet weak var contractsView: UIView!
    @IBOutlet weak var brokerImgView: UIView!
    
    @IBOutlet weak var contractsImgView: UIView!
    @IBOutlet weak var brokerView: UIView!
    @IBOutlet weak var dismissView: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.propertyImgView.layer.cornerRadius = self.propertyImgView.frame.size.width / 2
        self.brokerImgView.layer.cornerRadius = self.brokerImgView.frame.size.width / 2
        self.contractsImgView.layer.cornerRadius = self.contractsImgView.frame.size.width / 2
        self.dismissView.layer.cornerRadius = self.dismissView.frame.size.width / 2
        
        propertyView.layer.cornerRadius = 8
        propertyView.layer.borderColor = UIColor.lightGray.cgColor
        propertyView.layer.borderWidth = 0.3
        
        brokerView.layer.cornerRadius = 8
        brokerView.layer.borderColor = UIColor.lightGray.cgColor
        brokerView.layer.borderWidth = 0.3
        
        contractsView.layer.cornerRadius = 8
        contractsView.layer.borderColor = UIColor.lightGray.cgColor
        contractsView.layer.borderWidth = 0.3
        
    }
    
    @IBAction func dismis(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func AddProperty(_ sender: Any) {
        
        print("AddProperty Clicked")
    }
    
    
    @IBAction func SignUpAsBroker(_ sender: Any) {
        print("SignUpAsBroker Clicked")
    }
    
    
    @IBAction func RealEstateContractsBtn(_ sender: Any) {
        print("RealEstateContractsBtn Clicked")
    }
    
}
