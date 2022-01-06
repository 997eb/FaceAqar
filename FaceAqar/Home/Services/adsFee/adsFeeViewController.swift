//
//  adsFeeViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 19/06/1442 AH.
//

import UIKit

class adsFeeViewController: UIViewController {
   
    @IBOutlet weak var scroll: UIScrollView!
    
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var RealEstatePages: UIView! //first
    @IBOutlet weak var broker: UIView! //secound
    @IBOutlet weak var RealEstateContracts: UIView! //third
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "", style: .plain, target: nil, action: nil)

        self.navigationController?.isNavigationBarHidden = false

         self.RealEstateContracts.alpha = 0.0
         self.broker.alpha = 0.0
         self.RealEstatePages.alpha = 1.0

    }

    @IBAction func segmentControl(_ sender: UISegmentedControl) {
       
         if (sender.selectedSegmentIndex == 0) {
             
         UIView.animate(withDuration: 0.5, animations: {
   
            
            self.RealEstateContracts.alpha = 0.0
            self.broker.alpha = 0.0
            self.RealEstatePages.alpha = 1.0
         //  self.scroll.isScrollEnabled = true

         })
             
         } else if (sender.selectedSegmentIndex == 1) {
             
             UIView.animate(withDuration: 0.5, animations: {
                 
                
                self.RealEstateContracts.alpha = 0.0
                self.broker.alpha = 1.0
                //self.scroll.isScrollEnabled = true

                self.RealEstatePages.alpha = 0.0
             })
             
         } else {
             
             UIView.animate(withDuration: 0.5, animations: {

                self.RealEstateContracts.alpha = 1.0
             //   self.scroll.isScrollEnabled = false
                self.broker.alpha = 0.0
                self.RealEstatePages.alpha = 0.0
                 
             })
         }
   
    }
}
