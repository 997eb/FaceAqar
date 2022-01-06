//
//  profileViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 11/06/1442 AH.
//

import UIKit

class profileViewController: UIViewController {
    
    @IBOutlet weak var sideMenuView: UIView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var profileImg: UIImageView!
    
    @IBOutlet weak var marketingView: UIView!
    @IBOutlet weak var expiredView: UIView!
    @IBOutlet weak var unPaidAd: UIView!
    @IBOutlet weak var allAds: UIView!
    @IBOutlet weak var sideMenu: UIView!

    override func viewDidLoad() {
        

        super.viewDidLoad()
        
        navigationItem.backBarButtonItem = UIBarButtonItem(
            title: "", style: .plain, target: nil, action: nil)
        
        self.allAds.alpha = 1.0
        self.unPaidAd.alpha = 0.0
        self.expiredView.alpha = 0.0
        
     self.navigationController?.navigationBar.setBackgroundImage(nil, for: .default)
          self.navigationController?.navigationBar.shadowImage = nil
          self.navigationController?.navigationBar.isTranslucent = false
        
        marketingView.layer.cornerRadius = marketingView.frame.size.width/2
        profileImg.layer.cornerRadius = profileImg.frame.size.width/2
        profileImg.layer.borderColor = UIColor(red: 0.01, green: 0.04, blue: 0.22, alpha: 1.00).cgColor
        profileImg.layer.borderWidth = 3
     
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "sideMenu.png"), style: .done, target: self, action: #selector(addTapped))
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "editProfile.png"), style: .done, target: self, action: #selector(addTapped2))
        
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
     self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
           self.navigationController?.navigationBar.shadowImage = UIImage()
           self.navigationController?.navigationBar.isTranslucent = true
     
    }
    
    @objc func addTapped(){
        sideMenu.isHidden = false
        sideMenuView.isHidden = false
        self.tabBarController?.tabBar.isHidden = true
    }
    
    @objc func addTapped2(){
        let editProfile = UIStoryboard.init(name: "editProfile", bundle: Bundle.main).instantiateViewController(withIdentifier: "editProfile") as? editProfileViewController
    self.navigationController?.pushViewController(editProfile!, animated: true)
    }

    
    
     func touchesBegan(_ touches: Set<AnyHashable>, withEvent event: UIEvent) {
        self.sideMenuView.isHidden = true

    }
    

    @IBAction func segmentControl(_ sender: UISegmentedControl) {
        
        if (sender.selectedSegmentIndex == 0) {
        UIView.animate(withDuration: 0.5, animations: {
          
            self.allAds.alpha = 1.0
            self.unPaidAd.alpha = 0.0
            self.expiredView.alpha = 0.0
            
        })
        } else if (sender.selectedSegmentIndex == 1) {
            
            UIView.animate(withDuration: 0.5, animations: {
                
                self.allAds.alpha = 0.0
                self.unPaidAd.alpha = 0.0
                self.expiredView.alpha = 1.0
              
            })
            
        } else {
            self.allAds.alpha = 0.0
            self.unPaidAd.alpha = 1.0
            self.expiredView.alpha = 0.0
        }
    }
}


