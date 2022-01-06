//
//  homeViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 11/06/1442 AH.
//

import UIKit

class tabBarViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.navigationController?.isNavigationBarHidden = true
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
           navigationController?.navigationBar.shadowImage = UIImage()
        UINavigationBar.appearance().isTranslucent = true
        
      //  self.tabBarController?.delegate = UIApplication.shared.delegate as? UITabBarControllerDelegate



    }
   /* func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController is addViewController {
   
            if let popupView = tabBarController.storyboard?.instantiateViewController(withIdentifier: "Popup") {
                tabBarController.present(popupView, animated: true)
                return false
            }
            return false
        }
        

        return true
    }*/


}
