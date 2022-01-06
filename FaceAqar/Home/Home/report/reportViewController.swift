//
//  reportViewController.swift
//  FaceAqar
//
//  Created by Ebtsam alkhuzai on 19/06/1442 AH.
//

import UIKit

class reportViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      //  view.backgroundColor = UIColor.clear
        view.isOpaque = false
      //  self.tabBarController?.tabBar.isHidden = true
        self.navigationController?.isNavigationBarHidden = true
        self.tabBarController?.tabBar.layer.zPosition = -1

    }


    @IBAction func cancel(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
}
