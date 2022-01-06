//
//  paymentMethodViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 19/06/1442 AH.
//

import UIKit

class paymentMethodViewController: UIViewController {
    @IBOutlet weak var sebmentControl: UISegmentedControl!
    @IBOutlet weak var BankTransfers: UIView!
    @IBOutlet weak var ElectronicPayment: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.isNavigationBarHidden = false
        
        self.BankTransfers.alpha = 1.0
        self.ElectronicPayment.alpha = 0.0

    }
    
    func shadow(){
        
        
       /* contractView.backgroundColor = UIColor.clear
        contractView.layer.shadowColor = UIColor.lightGray.cgColor
        contractView.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        contractView.layer.shadowOpacity = 0.6
        contractView.layer.shadowRadius = 5.0*/
        
        
    }
    
    @IBAction func segmentControl(_ sender: UISegmentedControl) {
        
        if (sender.selectedSegmentIndex == 0) {
            
        UIView.animate(withDuration: 0.5, animations: {
            self.BankTransfers.alpha = 1.0
            self.ElectronicPayment.alpha = 0.0


        })
            
        } else {
            
            UIView.animate(withDuration: 0.5, animations: {
                self.BankTransfers.alpha = 0.0
                self.ElectronicPayment.alpha = 1.0
            })
            
        }
  
        
        
    }
    
}
